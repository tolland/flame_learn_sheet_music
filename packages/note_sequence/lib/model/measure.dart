import 'package:note_sequence/model/duration.dart';
import 'package:note_sequence/model/pitch.dart';
import 'package:note_sequence/model/staff.dart';
import 'package:note_sequence/model/voice.dart';

import '../utils/util.dart';
import 'clef.dart';
import 'note.dart';

class Measure {

  int? divisionsPerQuarterNote;
  /// these can be supplied by containing part, or overridden by measure
  /// if using the measure as starndalone
  List<Staff> staves;

  Voice? currentVoice;
  Staff? _currentStaff;
  /// the step is the next unfilled step in the measure
  /// where we fill added notes in the measure
  int currentStep = 0;

  Measure() : staves = [];

  set currentStaff(Clef clef) {
    for (var staff in staves) {
      if(staff.clef == clef) {
        print("setting current staff to ${staff.hashCode}");
        _currentStaff = staff;
        return;
      }
    }
    throw Exception("No staff with clef $clef to set as current staff");
  }

  /// create note with pitch and duration.
  /// The note is added to the measure and the step is incremented.
  Note addNote({
    required Pitch pitch,
    required NoteDuration duration,
    Clef clef=Clef.treble,
  }) {
    //assert(staves != null);
    if(staves.isEmpty) {
      staves.add(Staff());
    }


    var note = Note(
      pitch: pitch,
      startStep: currentStep,
      endStep: currentStep +
          Util.getStepFromDuration(
            duration,
            divisionsPerQuarterNote!,
          ),
    );
    //_currentStaff ??= staves[0];
    _currentStaff?.notes.add(note);
    currentStep = note.endStep;
    return note;
  }

  @override
  String toString() {
    return '''
    Measure{currentStep: $currentStep, divisionsPerQuarterNote: $divisionsPerQuarterNote - $hashCode
    staves: 
      $staves
    ''';
  }
}
