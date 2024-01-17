import 'package:equatable/equatable.dart';
import 'package:flame_learn_sheet_music/managers/note_manager.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logging/logging.dart';

import '../../models/pitch.dart';

part 'piano_event.dart';

part 'piano_state.dart';

class PianoBloc extends Bloc<PianoEvent, PianoState> {
  static final _log = Logger('PianoBloc');

  PianoBloc() : super(PianoState()) {
    on<PianoKeyPlayed>((event, emit) {
      _log.fine(() => "PianoKeyPressed emitting ${event.pitch}");

      _log.fine(() => "PianoKeyPressed state  ${state} before");

      emit(
        state.copyWith(
          pitchesPlaying: [...state.pitchesPlaying, event.pitch!],
        ),
      );

      _log.fine(() => "PianoKeyPressed state  ${state} after");
    });
    on<PianoKeyReleased>((event, emit) {
      _log.fine(() => "PianoKeyReleased emitting ${event.pitch}");

      var copied = [...state.pitchesPlaying];
      copied.remove(event.pitch);
      emit(
        state.copyWith(
          pitchesPlaying: copied,
        ),
      );
    });

    on<PianoPause>((event, emit) {
      _log.fine(() => "PianoPause emitting ${event}");

      emit(
        state.copyWith(
          paused: PianoPauseState.paused,
          pitchesPlaying: [],
        ),
      );
    });

    on<PianoResume>((event, emit) {
      _log.fine(() => "PianoResume emitting ${event}");

      emit(
        state.copyWith(
          paused: PianoPauseState.unpaused,
        ),
      );
    });

    on<PianoTogglePause>((event, emit) {
      _log.fine(() => "PianoTogglePause emitting ${event}");

      emit(
        state.copyWith(
          paused: state.paused == PianoPauseState.paused
              ? PianoPauseState.unpaused
              : PianoPauseState.paused,
          pitchesPlaying: state.paused == PianoPauseState.paused
              ? state.pitchesPlaying
              : [],
        ),
      );
    });

    on<PianoHide>((event, emit) {
      _log.fine(() => "PianoHide emitting ${event}");

      emit(
        state.copyWith(
          shown: PianoShowState.hiding,
        ),
      );
    });

    on<PianoShow>((event, emit) {
      _log.fine(() => "PianoShow emitting ${event}");

      emit(
        state.copyWith(
          shown: PianoShowState.showing,
        ),
      );
    });

    on<PianoToggleShow>((event, emit) {
      _log.finer(() => "Bloc handling ${event} event");
      emit(
        state.copyWith(
          shown: state.shown == PianoShowState.showing
              ? PianoShowState.hiding
              : PianoShowState.showing,
        ),
      );
    });
  }
}
