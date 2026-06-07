part of 'piano_bloc.dart';

enum PianoPauseState {
  paused,
  unpaused,
}

enum PianoShowState {
  showing,
  hiding,
}

class PianoState extends Equatable {
  final List<Pitch> pitchesPlaying;
  final PianoPauseState paused;
  final PianoShowState shown;

  const PianoState({
    this.pitchesPlaying = const [],
    this.paused = PianoPauseState.unpaused,
    this.shown = PianoShowState.showing,
  });

  // const PianoState.empty()
  //     : this(
  //   keysPressed: [],
  // );

  PianoState copyWith({
    List<Pitch>? pitchesPlaying,
    PianoPauseState? paused,
    PianoShowState? shown,
  }) {
    return PianoState(
      pitchesPlaying: pitchesPlaying ?? this.pitchesPlaying,
      paused: paused ?? this.paused,
      shown: shown ?? this.shown,
    );
  }

  @override
  String toString() {
    return 'count(${pitchesPlaying.length}) $pitchesPlaying shown($shown) paused($paused)';
  }

  @override
  List<Object?> get props => [
        pitchesPlaying,
        paused,
        shown,
      ];
}
