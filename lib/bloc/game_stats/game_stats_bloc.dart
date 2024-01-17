import 'package:equatable/equatable.dart';
import 'package:flame_learn_sheet_music/level_selection/game_level.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logging/logging.dart';

import '../../models/note.dart';

part 'game_stats_event.dart';

part 'game_stats_state.dart';

class GameStatsBloc extends Bloc<GameStatsEvent, GameStatsState> {
  static final _log = Logger('GameStatsBloc');

  GameStatsBloc({
    required GameLevel gameLevel,
  }) : super(GameStatsState.initial(gameLevel: gameLevel)) {
    //

    on<ScoreEventAdded>((event, emit) {
      if (state.notesRemaining > 1) {
        emit(
          state.copyWith(
            score: state.score + event.score,
            notesRemaining: state.notesRemaining - 1,
          ),
        );
      } else {
        _log.fine(() => "game over because notesRemaining is 1");
        emit(
          state.copyWith(
            score: state.score + event.score,
            notesRemaining: state.notesRemaining - 1,
            status: GameStatus.gameOver,
          ),
        );
      }
    });

    on<PlayerRespawned>((event, emit) {
      _log.fine(() => "in PlayerRespawned in bloc handler");
      emit(state.copyWith(status: GameStatus.respawned));
    });

    on<PlayerDied>((event, emit) {
      _log.fine(() => "in PlayerDied in bloc handler");
      if (state.lives > 1) {
        emit(
          state.copyWith(
            lives: state.lives - 1,
            status: GameStatus.respawn,
          ),
        );
      } else {
        emit(
          state.copyWith(
            lives: 0,
            status: GameStatus.gameOver,
          ),
        );
      }
    });

    on<GameReset>(
      (event, emit) => emit(
        state.copyWith(
          lives: 0,
          status: GameStatus.resetting,
          notesRemaining: state.gameLevel.notes.length,
        ),
      ),
    );

    on<GameStart>(
      (event, emit) => emit(
        state.copyWith(
            status: GameStatus.starting,
            notesRemaining: state.gameLevel.notes.length),
      ),
    );

    on<GameStarted>(
      (event, emit) => emit(
        state.copyWith(
          status: GameStatus.running,
        ),
      ),
    );

    on<TimerExpired>(
      (event, emit) => emit(
        state.copyWith(
          status: GameStatus.gameOver,
        ),
      ),
    );

    on<NotePlayable>(
      (event, emit) {
        _log.fine(() => "NotePlayable emitting ${event.playableNote}");
        emit(
          state.copyWith(
              playableNotes: [...state.playableNotes, event.playableNote]),
        );
      },
    );

    on<NotePlayableEnded>(
      (event, emit) {
        var copied = [...state.playableNotes];
        copied.remove(event.playableNote);
        emit(
          state.copyWith(
            playableNotes: copied,
            notesRemaining: state.notesRemaining - 1,
          ),
        );
      },
    );
  }
}
