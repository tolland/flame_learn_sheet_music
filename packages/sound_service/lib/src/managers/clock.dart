import 'dart:async';

import 'package:stop_watch_timer/stop_watch_timer.dart';

/// A clock that ticks and notifies listeners.
abstract class IClock {

  void start();

  void pause();

  void resume();

  void stop();

  void dispose();
}

/// implementation of [IClock] using [StopWatchTimer]
class Clock extends IClock {
  // Private field for tempo.
  double _ticksPerSecond;

  // Getter for tempo.
  double get ticksPerSecond => _ticksPerSecond;

  Clock({
    required double initialTicksPerSecond,
  }) :  _ticksPerSecond = initialTicksPerSecond, super() {
    _stopWatchTimer = StopWatchTimer(
      mode: StopWatchMode.countUp,
    );
  }

  set ticksPerSecond(double value) {
    //_ticksPerSecond = value;
    throw UnimplementedError("need to implement dynamic tempo");
  }

  late StopWatchTimer _stopWatchTimer;

  StopWatchTimer get stopWatchTimer => _stopWatchTimer;

  void dispose() {
    _stopWatchTimer.dispose();
    //_stopWatchTimer = null;
  }

  @override
  void pause() {
    _stopWatchTimer.onStopTimer();
  }

  @override
  void resume() {
    _stopWatchTimer.onStartTimer();
  }

  @override
  void stop() {
    _stopWatchTimer.onStopTimer();
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

  @override
  void start() {
    // TODO: implement start
  }
}
