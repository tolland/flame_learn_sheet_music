part of 'game_stats_bloc.dart';

enum GameStatus {
  ///maybe this should be called "pregame"?
  initial,
  starting,
  running,
  paused,
  respawn,
  respawned,
  gameOver,
  resetting,
}

class GameStatsState extends Equatable {
  final int score;
  final int lives;
  final GameStatus status;
  final GameLevel gameLevel;
  final List<Note> playableNotes;
  final bool pianoVisible;

  final int notesRemaining;

  const GameStatsState({
    required this.score,
    required this.lives,
    required this.status,
    required this.gameLevel,
    this.playableNotes = const [],
    this.notesRemaining = 0,
    this.pianoVisible = true,
  });

  // const GameStatsState.empty()
  //     : this(
  //         score: 0,
  //         lives: 3,
  //         status: GameStatus.initial,
  //       );

  const GameStatsState.initial({
    required GameLevel gameLevel,
  }) : this(
          score: 0,
          lives: 3,
          status: GameStatus.initial,
          gameLevel: gameLevel,
        );

  GameStatsState copyWith({
    int? score,
    int? lives,
    GameStatus? status,
    GameLevel? gameLevel,
    List<Note>? playableNotes,
    int? notesRemaining,
    bool? pianoVisible,
  }) {
    return GameStatsState(
      score: score ?? this.score,
      lives: lives ?? this.lives,
      status: status ?? this.status,
      gameLevel: gameLevel ?? this.gameLevel,
      playableNotes: playableNotes ?? this.playableNotes,
      notesRemaining: notesRemaining ?? this.notesRemaining,
      pianoVisible: pianoVisible ?? this.pianoVisible,
    );
  }

  @override
  String toString() {
    return """
    state: $status, count ${playableNotes.length} visible($pianoVisible)
    """;
  }

  @override
  List<Object?> get props => [score, lives, status, gameLevel, playableNotes, pianoVisible, notesRemaining];
}
