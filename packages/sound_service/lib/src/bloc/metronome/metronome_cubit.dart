import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../managers/adjustable_periodic_stream.dart';

part 'metronome_state.dart';


class MetronomeCubit extends Cubit<MetronomeState> {
  late StreamSubscription<DateTime> _clockSubscription;

  // Timer? _timer;
  late Duration _tickDuration;
  AdjustablePeriodicStream? adjustableStream;
  bool _dirty = false;
  bool _halfBeats = false;
  bool _halfBeatsDirty = false;
  bool _quarterBeats = false;
  bool _quarterBeatsDirty = false;
  /// smallest quantization of a beat
  int divisionsPerBeat = 4;


  MetronomeCubit() : super(const MetronomeState()) {}

  /// The number of milliseconds per tick
  int get millis => (60 / state.bpm * (1000 / divisionsPerBeat)).round();

  int newBpm = 0;

  int get tickDuration => _tickDuration.inMilliseconds;

  void start() {
    // var millis = (60 / state.bpm * (1000/4)).round();
    print("millis $millis");
    _tickDuration = Duration(
      milliseconds: millis,
    );

    adjustableStream = AdjustablePeriodicStream(initialDuration: _tickDuration);

    _clockSubscription = adjustableStream!.stream.listen((time) {
      tick();
    });

    emit(state.copyWith(status: MetronomeStatus.running));
  }

  void toggle() {
    if (state.status == MetronomeStatus.running) {
      stop();
    } else {
      start();
    }
  }

  void toggleHalfbeats() {
    // if (state.status == MetronomeStatus.running) {
    //   if (state.halfBeats) {
    //     emit(state.copyWith(halfBeats: false));
    //   } else {
    //     emit(state.copyWith(halfBeats: true));
    //   }
    // }
    _halfBeats = !state.halfBeats;
    _halfBeatsDirty = true;
  }

  void toggleQuarterbeats() {
    _quarterBeats = !state.quarterBeats;
    _quarterBeatsDirty = true;
  }

  void stop() {
    _clockSubscription.cancel();
    emit(state.copyWith(status: MetronomeStatus.stopped));
  }

  void decrementBpm() {
    // emit(state.copyWith(bpm: state.bpm - 5));
    // // var newmills = (60 / state.bpm * (1000/4)).round();
    // // print("new millis is $newmills");
    // adjustableStream?.changeDuration(Duration(milliseconds: millis));
    setBpm(state.bpm - 5);

    _dirty = true;
  }

  void incrementBpm() {
    // emit(state.copyWith(bpm: state.bpm + 5));
    // adjustableStream?.changeDuration(Duration(milliseconds: millis));
    setBpm(state.bpm + 5);
    _dirty = true;
  }

  void setBpm(int bpm) {
    newBpm = bpm;
    if (state.status != MetronomeStatus.running) {
      emit(state.copyWith(bpm: bpm));
    }
  }

  void tick() {
    // emit(state.copyWith(bpm: state.bpm + 5));
    // adjustableStream?.changeDuration(Duration(milliseconds: millis));
    emit(state.copyWith(
      bpm: _dirty ? newBpm : state.bpm,
      status: MetronomeStatus.running,
      ticks: state.ticks + 1,
      halfBeats: _halfBeatsDirty ? _halfBeats : state.halfBeats,
      quarterBeats: _quarterBeatsDirty ? _quarterBeats : state.quarterBeats,
    ));
    adjustableStream?.changeDuration(Duration(milliseconds: millis));
    _dirty = false;
    _halfBeatsDirty = false;
    _quarterBeatsDirty = false;
  }

  @override
  Future<void> close() {
    _clockSubscription.cancel();
    adjustableStream?.dispose();
    return super.close();
  }


}
