import 'dart:async';

import 'package:audioplayers/audioplayers.dart';
import 'package:logging/logging.dart';
import 'package:synchronized/synchronized.dart';

class PlayerLocker {
  static final _log = Logger('PlayerLocker');

  static bool _debug = false;

  final String playerId;

  final AudioPlayer player;

  final Lock _lock = Lock();

  late StreamSubscription<PlayerState> subscription;

  String get vol => player.volume.toStringAsFixed(2);

  PlayerLocker({
    required this.playerId,
  }) : player = AudioPlayer(playerId: playerId) {
    subscription = player.onPlayerStateChanged.listen((PlayerState s) {
      if (_debug) _log.shout('${player.playerId} player state: $s');
    });
  }

  Future<void> playNote(
      Map<int, Source> assetSources, int pitch, double volume) async {
    if (_debug)
      _log.info(
          "out1 - playing ${pitch} with volume ${volume.toStringAsFixed(2)} - state(${player.state})");
    subscription.cancel();
    subscription = player.onPlayerStateChanged.listen((PlayerState s) {
      if (_debug)  _log.shout('${player.playerId} player state: $s - ${pitch}');
    });
    await _lock.synchronized(() async {
      if (_debug)
        _log.fine(
            "in - playing ${pitch} with volume ${volume.toStringAsFixed(2)} - state(${player.state})");
      if (player.state == PlayerState.playing) {
        await player.stop();
      }
      assert(player.state == PlayerState.stopped ||
          player.state == PlayerState.completed);
      //await player.play('assets/notes/1.mp3');
      // String note = "notes/${Piano88Leethring.pianoNotes[pitch]!}";
      if (_debug)
        _log.info(
            "in - playing ${pitch} with volume ${volume.toStringAsFixed(2)} - state(${player.state})");
      await player.setVolume(volume);
      await player.setSource(assetSources[pitch]!);
      await player.resume();
    });
    if (_debug)
      _log.info(
          "out2- playing ${pitch} with volume ${volume.toStringAsFixed(2)} - state(${player.state})");
  }

  Future<void> reduceOff() async {
    if (_debug)
      _log.shout(
          "out - stopping ${player.source} with volume ${vol} - state(${player.state})");
    await _lock.synchronized(() async {
      if (_debug)
        _log.shout(
            "in - stopping ${player.source} with volume ${vol} - state(${player.state})");
      double currentVolume = player.volume; // Get the current volume.
      const int numberOfSteps = 5; // Define how many steps you want.
      double stepSize =
          currentVolume / numberOfSteps; // Calculate the step size.
      const duration =
          Duration(milliseconds: 100); // Duration between volume reductions.

      for (int i = 0; i < numberOfSteps; i++) {
        if (_debug)
          _log.shout(
              "in - stopping ${player.source} with volume ${vol} - state(${player.state})");
        currentVolume -= stepSize; // Decrease the volume by the step size.
        if (currentVolume < 0.01) currentVolume = 0;

        player.setVolume(currentVolume); // Set the new volume on the player.

        // Wait for some time before setting the next volume level.
        await Future.delayed(duration);
      }
      await player.stop();
      //await player.setSource(
    });
  }

// Future<void> stopNote(Source source) async {
//   await _lock.synchronized(() async {
//     await player.stop();
//     //await player.play('assets/notes/1.mp3');
//     // String note = "notes/${Piano88Leethring.pianoNotes[pitch]!}";
//     _log.info(
//         "playing ${source} with volume $volume - state(${player.state})");
//     await player.setSource(source);
//     await player.resume();
//   });
// }
}
