part of 'sound_service_bloc.dart';

enum SoundServiceStatus {
  initial,
  running,
  stopped,
  error,
}

class SoundServiceState extends Equatable {
  static final _log = Logger('SoundServiceState');

  final Map<int, int> noteOn;
  final Map<int, int> noteOff;
  final Map<int, Set<int>> notesPlaying;
  final SoundServiceStatus status;

  const SoundServiceState({
    this.status = SoundServiceStatus.initial,
    this.noteOn = const {},
    this.noteOff = const {},
    this.notesPlaying = const {
      0: {},
      1: {},
      2: {},
      3: {},
      4: {},
      5: {},
      6: {},
      7: {},
      8: {},
      9: {},
      10: {},
      11: {},
      12: {},
      13: {},
      14: {},
      15: {},
    },
  });

  SoundServiceState copyWith({
    SoundServiceStatus? status,
    Map<int, int>? noteOn,
    Map<int, int>? noteOff,
    Map<int, Set<int>>? notesPlaying,
  }) {
    return SoundServiceState(
      status: status ?? this.status,
      noteOn: noteOn ?? this.noteOn,
      noteOff: noteOff ?? this.noteOff,
      notesPlaying: notesPlaying ?? this.notesPlaying,
    );
  }

  @override
  List<Object> get props => [
        status,
        noteOn,
        noteOff,
        notesPlaying,
      ];

  @override
  String toString() {
    return 'state{(${status}) noteOn(${noteOn}) noteOff(${noteOff}) notesPlaying(${notesPlaying})';
  }
}
