import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logging/logging.dart';
import 'package:synchronized/synchronized.dart';

import '../../../sound_service.dart';

part '../../../generated/src/bloc/sound_service/sound_service_bloc.freezed.dart';
part 'sound_service_event.dart';
part 'sound_service_state.dart';

class SoundServiceBloc extends Bloc<SoundServiceEvent, SoundServiceState> {
  static final _log = Logger('SoundServiceBloc');

  final Clock clock;
  final IAudioController audioController;

  final Lock _lock = Lock();

  //final AudioControllerPools audioControllerPools;

  SoundServiceBloc({
    required this.clock,
    required this.audioController,
    //required this.audioControllerPools,
  }) : super(const SoundServiceState()) {
    _log.fine("in the constructor of SoundServiceBloc");
    on<SoundServiceEvent>((events, emit) async {
      await events.map(
        start: (event) async => await _start(event, emit),
        pause: (_) async => await _pause(emit),
        resume: (_) async => await _resume(emit),
        noteOn: (event) async => await _noteOn(event, emit),
        noteOff: (event) async => await _noteOff(event, emit),
        touch: (event) async => emit(state.copyWith()),
        stop: (_) => throw UnimplementedError(),
        mute: (_) => throw UnimplementedError(),
        unmute: (_) => throw UnimplementedError(),
        reset: (_) => throw UnimplementedError(),
        notesOn: (_) => throw UnimplementedError(),
      );
    });
  }

  _start(SoundServiceStart event, Emitter<SoundServiceState> emit) async {
    await _lock.synchronized(() async {
      if (state.status == SoundServiceStatus.initial) {
        _log.fine("in start");
        clock.start();
        await audioController.init();
        emit(
          state.copyWith(status: SoundServiceStatus.running),
        );
      } else {
        _log.warning("sound service is already inited");
      }
    });
    //clock.stopWatchTimer.secondTime.listen((value) => print('secondTime $value'));
  }

  _noteOn(SoundServiceNoteOn event, Emitter<SoundServiceState> emit) async {
    if (state.status != SoundServiceStatus.running) {
      _log.warning(
          'noteOn for note ${event.number} ignored because status is ${state.status}');
      return;
    }

    audioController.playNote(
      pitch: event.number,
      velocity: event.velocity,
      channel: event.channel,
    );

    if (state.notesPlaying[event.channel]!.contains(event.number)) {
      _log.warning('noteOn for note ${event.number} already on');
    }

    emit(
      state.copyWith(
        noteOn: {event.channel: event.number},
        noteOff: {},
        notesPlaying: Map.from(state.notesPlaying)
          ..update(
            event.channel,
            (value) => {...value}..add(event.number),
            ifAbsent: () => {event.number},
          ),
      ),
    );
  }

  _noteOff(SoundServiceNoteOff event, Emitter<SoundServiceState> emit) {
    if (state.status != SoundServiceStatus.running) {
      _log.warning(
          'noteOff for note ${event.number} ignored because status is ${state.status}');
      return;
    }

    audioController.stopNote(
      event.number,
      event.channel,
    );

    emit(
      state.copyWith(
        noteOn: {},
        noteOff: {event.channel: event.number},
        notesPlaying: Map.from(state.notesPlaying)
          ..update(
            event.channel,
            (value) => {...value}..remove(event.number),
            ifAbsent: () => {},
          ),
      ),
    );
  }

  _pause(Emitter<SoundServiceState> emit) {}

  _resume(Emitter<SoundServiceState> emit) {}
}
