import 'package:note_sequence/src/model/models.dart';

/// Pitch is represented as a combination of the step of the diatonic scale, the chromatic alteration, and the octave.
/// https://www.w3.org/2021/06/musicxml40/musicxml-reference/elements/pitch/
class Pitch {
  final PitchClass pitchClass;

  /// https://www.w3.org/2021/06/musicxml40/musicxml-reference/elements/alter/
  final double alter;
  final int octave;
  final int midiNumber;
  final double frequency;
  final String spn;

  Pitch(
    this.pitchClass,
    this.alter,
    this.octave,
    this.midiNumber,
    this.frequency,
    this.spn,
  );

  @override
  String toString() {
    return '''
    Pitch{spn: $spn}''';
  }
}
