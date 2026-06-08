import 'dart:async';

import 'package:audioplayers/audioplayers.dart';
import 'package:logging/logging.dart';

import '../messages.dart';
import '../sound_bank.dart';
import '../tone_generator.dart';
import '../voice_pool.dart';

/// [ToneGenerator] backed by the `audioplayers` package.
///
/// Works on all Flutter platforms (web, Linux, Windows, Android, iOS).
///
/// Pre-warms a shared [AudioCache] during [loadBank] so that on web the
/// audio is decoded once into a cached AudioBuffer. Subsequent [play] calls
/// reuse that buffer — no re-decode, no extra AudioContext per note, no pop.
///
/// Note release uses an exponential volume fade to avoid audible transients.
class AudioplayersBackend extends ToneGenerator {
  static final _log = Logger('AudioplayersBackend');

  // Release envelope constants. Adjust to taste.
  // 6 steps × 40 ms = 240 ms total; volume halved each step.
  static const _releaseSteps = 6;
  static const _releaseStepMs = 40;
  static const _releaseFactor = 0.5;

  final int polyphony;

  late final VoicePool _pool;
  late final List<AudioPlayer> _players;

  /// Shared cache — all players reference this so decoded data is cached once.
  final AudioCache _cache = AudioCache(prefix: '');

  // program → SoundBank
  final Map<int, SoundBank> _banks = {};
  // channel → active program (default 0)
  final Map<int, int> _programs = {};
  // voice index → last set volume (needed to start the release fade correctly)
  final Map<int, double> _voiceVolume = {};

  bool _muted = false;

  AudioplayersBackend({this.polyphony = 16});

  @override
  bool get muted => _muted;

  @override
  set muted(bool value) {
    _muted = value;
    if (value) _stopAll(null);
  }

  @override
  Future<void> init() async {
    _pool = VoicePool(polyphony);
    _players = List.generate(
      polyphony,
      (i) => AudioPlayer(playerId: 'tg_$i'),
    );
    for (final p in _players) {
      p.audioCache = _cache;
      await p.setReleaseMode(ReleaseMode.stop);
      // BytesSource requires PlayerMode.lowLatency to be OFF on Android
      // (SoundPool rejects bytes). We use mediaPlayer throughout; the
      // SoundpoolBackend is the future low-latency path for Android/iOS.
      await p.setPlayerMode(PlayerMode.mediaPlayer);
    }
    _log.fine('ready ($polyphony voices)');
  }

  @override
  Future<void> dispose() async {
    _stopAll(null);
    for (final p in _players) {
      await p.dispose();
    }
    for (final b in _banks.values) {
      b.dispose();
    }
  }

  /// Pre-warm [_cache] with every note in [bank] then register the bank.
  ///
  /// On web, [AudioCache.loadAsset] decodes the audio into an AudioBuffer and
  /// caches it. Later [play(AssetSource(...))] calls reuse that buffer — no
  /// re-decode and no extra AudioContext per note.
  @override
  Future<void> loadBank(int program, SoundBank bank) async {
    _log.fine('Pre-warming cache for "${bank.name}"…');
    for (final note in bank.notes) {
      final path = bank.pathFor(note);
      if (path == null) continue;
      try {
        await _cache.loadAsset(path);
      } catch (e) {
        _log.warning('Failed to cache $path: $e');
      }
    }
    bank.markLoaded();
    _banks[program] = bank;
    _log.fine('program $program → "${bank.name}"');
  }

  @override
  void send(MidiMessage message) {
    switch (message) {
      case NoteOn(:final channel, :final note, :final velocity):
        // velocity 0 = NoteOff per MIDI spec
        if (_muted || velocity == 0) {
          _stopNote(channel, note);
          return;
        }
        _playNote(channel, note, velocity);
      case NoteOff(:final channel, :final note):
        _stopNote(channel, note);
      case AllNotesOff(:final channel):
        _stopAll(channel);
      case ProgramChange(:final channel, :final program):
        _programs[channel] = program;
      case ControlChange(:final channel, :final controller, :final value):
        _handleCC(channel, controller, value);
    }
  }

  @override
  StreamSubscription<MidiMessage> subscribe(Stream<MidiMessage> stream) =>
      stream.listen(send);

  // ---------------------------------------------------------------------------

  void _playNote(int channel, int note, int velocity) {
    final path = _pathFor(channel, note);
    if (path == null) {
      _log.warning('no sample for note $note ch $channel');
      return;
    }
    final voice = _pool.acquireFor(note, channel);
    final vol = velocity / 127;
    _voiceVolume[voice.index] = vol;
    // Passing volume directly to play() sets it atomically before playback
    // starts, avoiding any race between setVolume and the audio output.
    _players[voice.index].play(AssetSource(path), volume: vol);
  }

  /// Begin an exponential fade then stop. Fire-and-forget.
  void _stopNote(int channel, int note) {
    final voice = _pool.find(note, channel);
    if (voice == null) return;
    voice.startRelease();
    _fadeOut(voice);
  }

  /// Exponential release fade. Exits early if the voice is stolen
  /// (generation changes) before the fade completes.
  Future<void> _fadeOut(Voice voice) async {
    final gen = voice.generation;
    final player = _players[voice.index];
    double vol = _voiceVolume[voice.index] ?? 1.0;

    for (int i = 0; i < _releaseSteps; i++) {
      await Future.delayed(const Duration(milliseconds: _releaseStepMs));
      if (voice.generation != gen) return; // voice was stolen; abort
      vol *= _releaseFactor;
      player.setVolume(vol);
    }

    if (voice.generation != gen) return;
    await player.stop();
    if (voice.generation == gen) voice.release();
  }

  void _stopAll(int? channel) {
    for (final voice in _pool.activeIn(channel).toList()) {
      voice.cancelRelease();
      _players[voice.index].stop();
      voice.release();
    }
  }

  void _handleCC(int channel, int controller, int value) {
    // CC 7 = channel volume
    if (controller == 7) {
      final vol = value / 127;
      for (final voice in _pool.activeIn(channel)) {
        _voiceVolume[voice.index] = vol;
        _players[voice.index].setVolume(vol);
      }
    }
    // CC 64 = sustain — not yet implemented
  }

  String? _pathFor(int channel, int note) {
    final program = _programs[channel] ?? 0;
    return _banks[program]?.pathFor(note);
  }
}
