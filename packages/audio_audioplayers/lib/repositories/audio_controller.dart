import 'dart:async';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/widgets.dart';
import 'package:logging/logging.dart';
import 'package:sound_service/sound_service.dart';

import '../model/player_locker.dart';
import 'app_lifecycle.dart';

/// Allows playing music and sound. A facade to `package:audioplayers`.
class AudioController implements IAudioController {
  static final _log = Logger('AudioController')..level = Level.FINEST;


  static bool _debug = false;

  final List<PlayerLocker> _sfxPlayers;

  //final List<AudioPlayer> _availablePlayers = [];

  /// pitch to filename map
  ///late final Map<int, AssetSource> assetSources;
  final Map<int, Source> assetSources = {};

  int _currentSfxPlayer = 0;

  ValueNotifier<AppLifecycleState>? _lifecycleNotifier;

  /// track which notes are playing
  late List<List<PlayerLocker?>> audioMatrix;

  AudioController({
    int channels = 2,
    int polyphony = 24,
  })  : assert(polyphony >= 1),
        _sfxPlayers = Iterable.generate(
            polyphony,
            (i) => PlayerLocker(
                  playerId: 'sfxPlayer#$i',
                )).toList(growable: false) {
    //_musicPlayer.onPlayerComplete.listen(_handleSongFinished);
    AudioLogger.logLevel = AudioLogLevel.info;
    // unawaited(_preloadSfx());
    _log.fine("created AudioController");
    audioMatrix = List.generate(128, (_) => List.generate(16, (_) => null));
  }

  @override
  Future<void> init() async {
    unawaited(_preloadSfx());
  }

  /// Makes sure the audio controller is listening to changes
  /// of the app lifecycle
  void attachDependencies(
    AppLifecycleStateNotifier lifecycleNotifier,
  ) {
    _attachLifecycleNotifier(lifecycleNotifier);
    //_attachSettings(settingsController);
  }

  void dispose() {
    if (_debug) _log.fine("disposing player");
    _lifecycleNotifier?.removeListener(_handleAppLifecycle);
    _stopAllSound();
    for (final player in _sfxPlayers) {
      player.player.dispose();
    }
  }

  void reduceVolumeGradually(PlayerLocker playa) async {}

  void stopNote(int pitch, int channel) {
    String note = Piano88Leethring.pianoNotes[pitch]!;

    if (audioMatrix[pitch][channel] == null) {
      _log.warning("no player found for pitch $pitch channel $channel to stop");
      return;
    }

    PlayerLocker currentPlayer = audioMatrix[pitch][channel]!;
    if (_debug)
      _log.fine(
          "stopping note pitch $pitch channel $channel currentPlayer ${currentPlayer.player.state} ");

//    if (currentPlayer.player.state == PlayerState.playing) {
    currentPlayer.reduceOff();
    audioMatrix[pitch][channel] = null;
    // } else {
    //   _log.fine(
    //       "playa ${currentPlayer.player} is not playing but has asset source - pitch $pitch channel $channel");
    // }
  }

//https://pub.dev/packages/pool
  Future<void> playNote({
    required int pitch,
    required int velocity,
    required int channel,
  }) async {
    PlayerLocker currentPlayer;

    //currentPlayer = await _lock.synchronized(() {
    currentPlayer = _sfxPlayers[_currentSfxPlayer];
    if (audioMatrix[pitch][channel] != null) {
      _log.warning("note $pitch channel $channel already playing");
      //return;
    }
    audioMatrix[pitch][channel] = currentPlayer;
    if (_debug)
      _log.fine(
          "selectied playa $_currentSfxPlayer for note $pitch channel $channel");
    _currentSfxPlayer = (_currentSfxPlayer + 1) % _sfxPlayers.length;
    //return currentPlayer;
    //  });

    //if (_debug) _log.fine("selecting new playa $_currentSfxPlayer");

    PlayerState currentState = currentPlayer.player.state;
    // print(
    //     "playing note $pitch on playa ${_currentSfxPlayer} status ${currentPlayer.state}");
    //currentPlayer.audioCache = AudioCache.instance;
    double volume = velocity / 127;

    String note;
    if (channel == 0) {
      note = "notes/${Piano88Leethring.pianoNotes[pitch]!}";
      if (_debug)
        _log.info(
            "playing ${note} with volume $volume - state(${currentPlayer.player.state})");
      currentPlayer.playNote(assetSources, pitch, velocity / 127);
    } else if (channel == 1) {
      note = "sfx/metronome-85688";
      // await currentPlayer.playNote(
      //     AssetSource(
      //       'packages/sound_service/assets/sfx/metronome-85688.mp3',
      //     ),
      //     volume: velocity / 127);
    } else {
      throw Exception("channel $channel not supported");
    }
  }

  /// Enables the [AudioController] to listen to [AppLifecycleState] events,
  /// and therefore do things like stopping playback when the game
  /// goes into the background.
  void _attachLifecycleNotifier(AppLifecycleStateNotifier lifecycleNotifier) {
    _lifecycleNotifier?.removeListener(_handleAppLifecycle);

    lifecycleNotifier.addListener(_handleAppLifecycle);
    _lifecycleNotifier = lifecycleNotifier;
  }

  void _handleAppLifecycle() {
    switch (_lifecycleNotifier!.value) {
      case AppLifecycleState.paused:
      case AppLifecycleState.detached:
      case AppLifecycleState.hidden:
        _stopAllSound();
      case AppLifecycleState.resumed:
      //if (_settings!.audioOn.value && _settings!.musicOn.value) {
      // _startOrResumeMusic();
      //}
      case AppLifecycleState.inactive:
        // No need to react to this state change.
        break;
    }
  }

  /// Preloads all sound effects.
  Future<void> _preloadSfx() async {
    if (_debug) _log.info('Preloading sound effects');
    // This assumes there is only a limited number of sound effects in the game.
    // If there are hundreds of long sound effect files, it's better
    // to be more selective when preloading.
    AudioCache.instance = AudioCache(prefix: 'packages/sound_service/assets/');
    // await AudioCache.instance.loadAll(SfxType.values
    //     .expand(soundTypeToFilename)
    //     .map((path) => 'packages/sound_service/assets/notes/$path')
    //     .toList());

    print("global audiocash hash is ${AudioCache.instance.hashCode}");

    for (int i = 36; i <= 108; i++) {
      String note = Piano88Leethring.pianoNotes[i]!;
      String path = 'notes/$note.mp3';

      //ByteData bytes = await rootBundle.load(path);
      //Uint8List  soundbytes = bytes.buffer.asUint8List(bytes.offsetInBytes, bytes.lengthInBytes);
      assetSources[i] = AssetSource(path);

      var test1 = await AudioCache.instance
          .loadAsset('packages/sound_service/assets/notes/$note.mp3');
      //print("test1 is $test1");
    }

    // assetSources = Map.fromIterable(
    //   Piano88Leethring.pianoNotes.keys,
    //   key: (k) => k,
    //   value: (k) => AssetSource(
    //     'packages/sound_service/assets/notes/${Piano88Leethring.pianoNotes[k]}.mp3',
    //   ),
    // );

    for (final player in _sfxPlayers) {
      if (_debug) print("player state in preload is ${player.player.state}");
      player.player.setReleaseMode(ReleaseMode.stop);
      player.player.setPlayerMode(PlayerMode.lowLatency);
      player.player.audioCache = AudioCache.instance;
      //player.onPlayerStateChanged.listen((PlayerState s) {
      //_log.shout('${player.playerId} player state: $s');
      //setState(() => playerState = s);
      //});
      // player.onPlayerComplete.listen((_) {
      //   _log.shout('${player.playerId} player complete');
      //   player.dispose();
      //   //setState(() => playerState = PlayerState.stopped);
      // });
    }

    // _log.fine("AudioCache instances loaded");
  }

  void _stopAllSound() {
    _log.info('Stopping all sound');
    for (final player in _sfxPlayers) {
      player.player.stop();
    }
  }
}
