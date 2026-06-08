part of 'metronome_cubit.dart';

enum MetronomeStatus {
  initial,
  running,
  stopped,
  error,
}

class MetronomeState extends Equatable {
  final int bpm;
  final int ticks;
  final bool halfBeats;
  final bool quarterBeats;
  final MetronomeStatus status;

  const MetronomeState({
    this.bpm = 60,
    this.halfBeats = false,
    this.quarterBeats = false,
    this.status = MetronomeStatus.initial,
    this.ticks = 0,
  });

  MetronomeState copyWith({
    MetronomeStatus? status,
    bool? halfBeats,
    bool? quarterBeats,
    int? bpm,
    int? ticks,
  }) {
    return MetronomeState(
      status: status ?? this.status,
      bpm: bpm ?? this.bpm,
      ticks: ticks ?? this.ticks,
      halfBeats: halfBeats ?? this.halfBeats,
      quarterBeats: quarterBeats ?? this.quarterBeats,
    );
  }

  @override
  List<Object> get props =>
      [
        status,
        bpm,
        ticks,
        halfBeats,
        quarterBeats,
      ];

// const factory MetronomeState({
//   @Default(MetronomeStatus.initial) MetronomeStatus status,
//   @Default(60) int bpm,
//   @Default(0) int ticks,
//   @Default(false) bool halfBeats,
//   @Default(false) bool quarterBeats,
// }) = MetronomeStateInitial;
}
