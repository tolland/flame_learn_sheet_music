import 'dart:async';

import 'package:flutter/services.dart';
import 'package:logging/logging.dart';
import 'package:sound_service/sound_service.dart';
import 'package:soundpool/soundpool.dart';

import '../models/stream_cache.dart';



class AudioControllerSoundPool implements IAudioController {
  static final _log = Logger('AudioControllerSoundPool');
  final Soundpool pool;

  /// _pitch2SoundIds[channel][pitch] = soundId
  final Map<int, Map<int, int>> _pitch2SoundIds = {};

  /// _path2soundIds[channel][path] = soundId
  final Map<int, Map<String, int>> _path2soundIds = {};

  /// _pitch2StreamIds[channel][pitch] = streamId
  final Map<int, Map<int, int>> _pitch2StreamIds = {};

  final Map<int, StreamCache> _streamCache = {};

  bool _debug = false;

  bool isInitialized = false;

  AudioControllerSoundPool({
    SoundpoolOptions? soundpoolOptions,
  }) : pool = Soundpool.fromOptions(
            options: soundpoolOptions ?? SoundpoolOptions()) {
    _log.info("AudioControllerSoundPool constructor");
  }

  @override
  Future<void> init() async {
    await preloadSources();
    isInitialized = true;
  }

  Future<void> preloadSources() async {
    _log.info("preloadSources");
    _pitch2SoundIds[0] = {};
    _path2soundIds[0] = {};
    _pitch2StreamIds[0] = {};
    for (int i = 36; i <= 84; i++) {
      String path =
          "packages/sound_service/assets/notes/${Piano88Leethring.pianoNotes[i]!}.mp3";
      int soundId = await rootBundle.load(path).then((ByteData soundData) {
        return pool.load(soundData);
      }).catchError((error) {
        _log.severe("Error loading sound for pitch $i: $error");
        throw error;
      });
      _pitch2SoundIds[0]![i] = soundId;
      _path2soundIds[0]![path] = soundId;
    }

    _pitch2SoundIds[1] = {};
    _path2soundIds[1] = {};
    _pitch2StreamIds[1] = {};

    MetronomeInstrument.pitches.forEach((key, pitch) async {
      String path = "${MetronomeInstrument.basePath}/${pitch.path}";

      int soundId = await rootBundle.load(path).then((ByteData soundData) {
        return pool.load(soundData);
      });
      _pitch2SoundIds[1]![key] = soundId;
      _path2soundIds[1]![path] = soundId;
    });
  }

  @override
  Future<int> playNote(
      {required int pitch, required int velocity, required int channel}) async {
    _log.finer(
        "playNote handling playNote pitch $pitch channel $channel velocity $velocity");
    if (!isInitialized) await init();
    var soundId = _pitch2SoundIds[channel]![pitch];
    _log.finer(
        "playing $soundId - ${_pitch2SoundIds[channel]![pitch]} for pitch $pitch");
    pool.setVolume(soundId: soundId, volume: velocity / 127);
    // print("velocity is $velocity  - volume is ${velocity / 127}");
    if (soundId == null) {
      throw Exception("soundId is null for pitch $pitch in $channel");
    }
    _pitch2StreamIds[channel]![pitch] = await pool.play(soundId);
    int streamId = _pitch2StreamIds[channel]![pitch]!;
    var cacheId = (streamId << 4) + channel;
    _streamCache[cacheId] = StreamCache(
      streamId: streamId,
      pitch: pitch,
      channel: channel,
      velocity: velocity,
      soundId: soundId,
    );
    _log.finest("stream cache is ${_streamCache[cacheId]}");

    return cacheId;
  }

  @override
  Future<void> stopNote(int pitch, int channel) async {
    _log.finer("stopNote handling playNote number $pitch channel $channel");
    int? streamId = _pitch2StreamIds[channel]![pitch];
    int? sourceId = _pitch2SoundIds[channel]![pitch];

    // var test = _path2soundIds.keys.firstWhere((element) => _path2soundIds[element] == streamId);
    // print("test path is $test");

    //double currentVolume = 0.5;
    // double currentVolume = 15/128;
    // const int numberOfSteps = 10;
    // double stepSize = currentVolume / numberOfSteps;
    // const duration = Duration(milliseconds: 50);
    // for (int i = 0; i < numberOfSteps; i++) {
    //   //currentVolume -= stepSize; // Decrease the volume by the step size.
    //   var nextVolume = currentVolume * 2 / 3;
    //   if (currentVolume < 0.01 || nextVolume < 0.01) break;
    //
    //   _log.shout("setting stream $streamId to volume $nextVolume");
    //   pool.setVolume(
    //     soundId: sourceId,
    //     streamId: streamId,
    //     volume: currentVolume,
    //   ); // Set the new volume on the player.
    //   currentVolume = nextVolume;
    //   // Wait for some time before setting the next volume level.
    //   await Future.delayed(duration);
    // }
    // _log.shout("setting stream $streamId to volume 0.01");
    await pool.setVolume(
      soundId: sourceId,
      streamId: streamId,
      volume: 0.01,
    ); // Set the new volume on the player.
    await Future.delayed(const Duration(milliseconds: 500));
    // _log.shout("setting stream $streamId to volume 0.01");

    if (streamId != null) {
      await pool.stop(streamId);
    } else {
      _log.severe("streamId is null for pitch $pitch");
    }
  }

  @override
  dispose() {
    _log.fine("disposing in the soundpool controller");
    pool.dispose();
  }
}
