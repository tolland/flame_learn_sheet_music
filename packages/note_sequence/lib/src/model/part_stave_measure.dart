import 'package:logging/logging.dart';
import 'package:note_sequence/note_sequence.dart';


/// represents a specific measure in a stave (of a part)
/// This is where the notes are stored. For the StaveMeasure to be considered
/// valid, the sum of the note durations must equal the measure duration
class PartStaveMeasure extends Validatable {
  static final _log = Logger('PartStaveMeasure');

  //final Part part;
  final Staff stave;
  final Measure measure;
  final List<Note> notes;

  static var _instances = 0;

  PartStaveMeasure({
    //required this.part,
    required this.stave,
    required this.measure,
    List<Note>? notes,
  }) : notes = notes ?? [] {
    //print("measure instance created : ${_instances}");
    stave.psm.add(this);
    measure.psm.add(this);
    _instances++;
  }

  int get count => notes.length;

  List<NoteSeqQuant> renderTimewise() {
    List<NoteSeqQuant> quantums = [];
    int step = 0;

    notes.sort((a, b) => a.startStep.compareTo(b.startStep));

    for (Note note in notes) {
      if (note.pitch.pitchClass == PitchClass.undefined) {
        continue;
      }
      var obj = NoteSeqQuant(
        midiPitch: note.pitch.midiNumber,
        startStep: note.startStep + measure.globalStartStep,
        endStep: note.endStep + measure.globalStartStep,
      );
      quantums.add(obj);
    }
    return quantums;
  }

  @override
  bool validate() {
    bool isValid = true;

    /// based on the time signature, the measure should have a certain number of
    /// quantums. i.e. the smallest unit the notation can represent
    /// Also what will be used as the tick size for the audio playback
    ///
    var totalSteps = measure.getTotalSteps();

    var totalNoteDuration =
        notes.map((note) => note.duration).reduce((a, b) => a + b);

    if (totalNoteDuration != totalSteps) {
      print("psm failed validation : $totalNoteDuration != $totalSteps");
      isValid = false;
    }

    return isValid;
  }
}
