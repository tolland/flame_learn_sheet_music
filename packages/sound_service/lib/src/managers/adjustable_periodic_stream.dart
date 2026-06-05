import 'dart:async';

class AdjustablePeriodicStream {
  ///
  final StreamController<DateTime> _controller;
  Timer? _timer;
  Duration _duration;

  Stream<DateTime> get stream => _controller.stream;

  AdjustablePeriodicStream({required Duration initialDuration})
      : _controller = StreamController<DateTime>.broadcast(),
        _duration = initialDuration {
    _startTimer();
  }

  void _startTimer() {
    _timer = Timer.periodic(_duration, (timer) {
      _controller.add(DateTime.now());
    });
  }

  void changeDuration(Duration newDuration) {
    print("_duration $_duration newDuration $newDuration");
    if (_duration != newDuration) {
      _duration = newDuration;
      _timer?.cancel(); // Cancel the existing timer
      _startTimer(); // Start a new timer with the updated duration
    }
  }

  void dispose() {
    _timer?.cancel();
    _controller.close();
  }
}
