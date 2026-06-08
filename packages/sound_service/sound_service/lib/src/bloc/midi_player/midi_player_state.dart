part of 'midi_player_bloc.dart';

enum MidiPlayerStatus {
  initial,
  load,
  loaded,
  play,
  playing,
  stop,
  stopped,
  done,
  error,
}

class MidiPlayerState extends Equatable {
  final MidiFile? midiFile;
  final MidiPlayerStatus status;

  const MidiPlayerState({
    this.midiFile,
    this.status = MidiPlayerStatus.initial,
  });

  MidiPlayerState copyWith({
    MidiFile? midiFile,
    MidiPlayerStatus? status,
  }) {
    return MidiPlayerState(
      midiFile: midiFile ?? this.midiFile,
      status: status ?? this.status,
    );
  }

  @override
  List<Object?> get props => [
        midiFile,
        status,
      ];
}
