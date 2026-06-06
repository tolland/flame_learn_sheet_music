import 'dart:async';
import 'dart:typed_data';

import 'package:audioplayers/audioplayers.dart';
import 'package:logging/logging.dart';

import '../messages.dart';
import '../sound_bank.dart';
import '../tone_generator.dart';
import '../voice_pool.dart';

/// [ToneGenerator] backed by the `audioplayers` package.
///
/// Works on all Flutter platforms (web, Linux, Windows, Android, iOS).
/// Loads each note's bytes into RAM once; all [polyphony] player instances
/// share the same [Uint8List] references — no N×M memory duplication.
class AudioplayersBackend extends ToneGenerator {
  static final _log = Logger('AudioplayersBackend');

  final int polyphony;

  late final VoicePool _pool;
  late final List<AudioPlayer> _players;

  // program → SoundBank
  final Map<int, SoundBank> _banks = {};
  // channel → active program (default 0)
  final Map<int, int> _programs = {};

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
      await p.setReleaseMode(ReleaseMode.stop);
      await p.setPlayerMode(PlayerMode.lowLatency);
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

  @override
  Future<void> loadBank(int program, SoundBank bank) async {
    if (!bank.isLoaded) await bank.load();
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
    final bytes = _bytesFor(channel, note);
    if (bytes == null) {
      _log.warning('no sample for note $note ch $channel');
      return;
    }
    final voice = _pool.acquireFor(note, channel);
    final player = _players[voice.index];
    player.setVolume(velocity / 127);
    player.play(BytesSource(bytes));
  }

  void _stopNote(int channel, int note) {
    final voice = _pool.find(note, channel);
    if (voice == null) return;
    _players[voice.index].stop();
    voice.release();
  }

  void _stopAll(int? channel) {
    for (final voice in _pool.activeIn(channel).toList()) {
      _players[voice.index].stop();
      voice.release();
    }
  }

  void _handleCC(int channel, int controller, int value) {
    // CC 7 = channel volume
    if (controller == 7) {
      final vol = value / 127;
      for (final voice in _pool.activeIn(channel)) {
        _players[voice.index].setVolume(vol);
      }
    }
    // CC 64 = sustain — not yet implemented
  }

  Uint8List? _bytesFor(int channel, int note) {
    final program = _programs[channel] ?? 0;
    return _banks[program]?.bytesFor(note);
  }
}
