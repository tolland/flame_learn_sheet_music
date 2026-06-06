import 'dart:async';

import 'package:audioplayers/audioplayers.dart';
import 'package:logging/logging.dart';
import 'package:pool/pool.dart';
import 'package:sound_service/sound_service.dart';
import 'package:synchronized/synchronized.dart';

/// Allows playing music and sound. A facade to `package:audioplayers`.
class AudioControllerPools {
  static final _log = Logger('AudioControllerPools');

  /// This is a list of [AudioPool] instances which are rotated to play
  /// sound effects.
  late final  Map<int, AudioPool> _pools = {};

  /// pitch number to filename map
  late final  Map<int, AssetSource> _assetSources = {};

  /// various attempts to prevent the reused players getting stuck
  final Lock _lock = Lock();
  final pool = Pool(20, timeout: const Duration(seconds: 30));

  AudioControllerPools() {
    //_musicPlayer.onPlayerComplete.listen(_handleSongFinished);
    AudioLogger.logLevel = AudioLogLevel.info;
    unawaited(_preloadSfx());
    _log.fine("created playa");
  }


  void dispose() {
    _log.fine("disposing player");
    _stopAllSound();
    _pools.forEach((key, value) {
      value.dispose();
    });
  }

  void reduceVolumeGradually(AudioPlayer playa) async {
    double currentVolume = playa.volume; // Get the current volume.
    const int numberOfSteps = 6; // Define how many steps you want.
    double stepSize = currentVolume / numberOfSteps; // Calculate the step size.
    const duration =
        Duration(milliseconds: 200); // Duration between volume reductions.

    for (int i = 0; i < numberOfSteps; i++) {
      currentVolume -= stepSize; // Decrease the volume by the step size.
      if (currentVolume < 0.01) currentVolume = 0;

      playa.setVolume(currentVolume); // Set the new volume on the player.

      // Wait for some time before setting the next volume level.
      await Future.delayed(duration);
    }
  }

  void stopNote(int pitch) {
    //print("stopping note $pitch");
    String note = Piano88Leethring.pianoNotes[pitch]!;

  }


  //https://pub.dev/packages/pool
  Future<void> playNote({
    required int pitch,
    required int velocity,
    required int channel,
  }) async {
    _pools[pitch]!.start(volume: velocity / 127);

    double volume = velocity / 127;


  }



  /// Preloads all sound effects.
  Future<void> _preloadSfx() async {
    _log.info('Preloading sound effects');
    // This assumes there is only a limited number of sound effects in the game.
    // If there are hundreds of long sound effect files, it's better
    // to be more selective when preloading.
    AudioCache.instance = AudioCache(prefix: '');
    // await AudioCache.instance.loadAll(SfxType.values
    //     .expand(soundTypeToFilename)
    //     .map((path) => 'packages/sound_service/assets/notes/$path')
    //     .toList());

    for (int i = 21; i <= 108; i++) {
      String note = Piano88Leethring.pianoNotes[i]!;
      await AudioCache.instance
          .loadAsset('packages/sound_service/assets/notes/$note.mp3');

      _assetSources[i]= AssetSource(
        'packages/sound_service/assets/notes/${Piano88Leethring.pianoNotes[i]}.mp3');

      _pools[i] = await AudioPool.create(
        source: _assetSources[i]!,
        minPlayers: 1,
        maxPlayers: 5,
      );
    }

    _log.fine("AudioCache.instance.loadedFiles");
  }

  void _stopAllSound() {
    _log.info('Stopping all sound');
    // _pools.forEach((key, value) {
    //   value.;
    // });
  }
}
