part of 'game_stats_bloc.dart';

abstract class GameStatsEvent extends Equatable {
  const GameStatsEvent();
}

class ScoreEventAdded extends GameStatsEvent {
  const ScoreEventAdded(this.score);

  final int score;

  @override
  List<Object?> get props => [score];
}

class PlayerDied extends GameStatsEvent {
  const PlayerDied();

  @override
  List<Object?> get props => [];
}

/// event sent by flame game when its timer countdown is reached
class TimerExpired extends GameStatsEvent {
  const TimerExpired();

  @override
  List<Object?> get props => [];
}

class PlayerRespawned extends GameStatsEvent {
  const PlayerRespawned();

  @override
  List<Object?> get props => [];
}

class GameReset extends GameStatsEvent {
  const GameReset();

  @override
  List<Object?> get props => [];
}

/// a request to start a game
class GameStart extends GameStatsEvent {
  const GameStart();

  @override
  List<Object?> get props => [];
}

/// This indicates the event was processed
class GameStarted extends GameStatsEvent {
  const GameStarted();

  @override
  List<Object?> get props => [];
}

/// A note has become playable in the visual area. This is used to
/// track notes that can be removed on keypress.
class NotePlayable extends GameStatsEvent {
  final Note playableNote;

  const NotePlayable({required this.playableNote});

  @override
  List<Object?> get props => [playableNote];
}

/// the note has left the visual area and is no longer playable
/// this is either due to coming off the screen or being played
class NotePlayableEnded extends GameStatsEvent {
  final Note playableNote;

  const NotePlayableEnded({required this.playableNote});

  @override
  List<Object?> get props => [playableNote];
}
