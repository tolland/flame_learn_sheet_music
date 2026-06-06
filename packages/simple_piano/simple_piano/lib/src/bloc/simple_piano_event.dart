part of 'simple_piano_bloc.dart';

@freezed
class SimplePianoEvent with _$SimplePianoEvent {
  // const factory SimplePianoEvent.start() = SimplePianoStart;
  //
  // const factory SimplePianoEvent.stop() = SimplePianoStop;

  const factory SimplePianoEvent.pitchFromExternal({
    required Set<int> pitches,
  }) = SimplePianoPitchFromExternal;

  const factory SimplePianoEvent.keyPanStart({
    required int number,
  }) = SimplePianoKeyPanStart;

  const factory SimplePianoEvent.keyPanEnd({
    required int number,
  }) = SimplePianoKeyPanEnd;

  const factory SimplePianoEvent.keyPanCancel({
    required int number,
  }) = SimplePianoKeyPanCancel;

  const factory SimplePianoEvent.keyMouseEnter({
    required int number,
  }) = SimplePianoKeyMouseEnter;

  const factory SimplePianoEvent.keyMouseExit({
    required int number,
  }) = SimplePianoKeyMouseExit;

  const factory SimplePianoEvent.pianoEnter() = SimplePianoMouseEnter;

  const factory SimplePianoEvent.pianoExit() = SimplePianoMouseExit;

}
