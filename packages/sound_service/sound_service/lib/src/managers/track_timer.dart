
import 'dart:async';

import 'package:stop_watch_timer/stop_watch_timer.dart';

/// A class that manages the timer for a track.
/// copied from https://gist.github.com/dokumanx/f2f20d36893d94b02e0212e9c00ead9f#file-track_timer-dart
class TrackTimer {
  TrackTimer() {
    _stopWatchTimer = StopWatchTimer(
      mode: StopWatchMode.countDown,
    );
  }

  late StopWatchTimer? _stopWatchTimer;

  StopWatchTimer? get stopWatchTimer => _stopWatchTimer;

  void dispose() {
    _stopWatchTimer!.dispose();
    _stopWatchTimer = null;
  }

  void pause() {
    _stopWatchTimer!.onStopTimer();
  }

  void resume() {
    _stopWatchTimer!.onStartTimer();
  }

  void stop() {
    _stopWatchTimer!.onStopTimer();
    _stopWatchTimer!.clearPresetTime();
    _stopWatchTimer!.onResetTimer();
  }

  void setTrackDuration({
    required Duration duration,
  }) {
    var mSec = duration.inMilliseconds;
    if (_stopWatchTimer != null) {
      stop();
      _stopWatchTimer!.setPresetTime(mSec: mSec);
      _stopWatchTimer!.onStartTimer();
    }
  }

  Duration passedTime({required Duration trackDuration}) {
    int trackTimeInMsc = trackDuration.inMilliseconds;
    int remainingTimeInMsc = _stopWatchTimer!.secondTime.value;
    int timeElapsedInMsc = trackTimeInMsc - remainingTimeInMsc;

    return Duration(milliseconds: timeElapsedInMsc);
  }

  Stream<Duration> passedTimeStream({required Duration trackDuration}) async* {
    final stopWatchStreamController = StreamController<Duration>.broadcast();

    int trackTimeInMsc = trackDuration.inMilliseconds;

    final sub = _stopWatchTimer?.rawTime.listen((remainingTimeInMsc) {
      int timeElapsedInMsc = trackTimeInMsc - remainingTimeInMsc;
      stopWatchStreamController.sink
          .add(Duration(milliseconds: timeElapsedInMsc));
    });

    stopWatchStreamController.onCancel = () {
      sub?.cancel();
    };

    yield* stopWatchStreamController.stream.distinct(
          (previous, next) => previous.inSeconds == next.inSeconds,
    );
  }
}
