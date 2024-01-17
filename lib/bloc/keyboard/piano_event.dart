part of 'piano_bloc.dart';

abstract class PianoEvent extends Equatable {
  const PianoEvent();

  @override
  List<Object?> get props => [];
}

final class PianoKeyPlayed extends PianoEvent {
  final Pitch pitch;

  PianoKeyPlayed({
    required this.pitch,
  });

}

final class PianoKeyReleased extends PianoEvent {
  final Pitch pitch;

  PianoKeyReleased({
    required this.pitch,
  });

}

/// piano still showing but not responding to input
class PianoPause extends PianoEvent {}
class PianoResume extends PianoEvent {}
class PianoTogglePause extends PianoEvent {}

class PianoShow extends PianoEvent {}
class PianoHide extends PianoEvent {}
class PianoToggleShow extends PianoEvent {}

/// reset any state - not used???
class ResetPiano extends PianoEvent {}
