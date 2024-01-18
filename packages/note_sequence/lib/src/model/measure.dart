import 'package:note_sequence/src/model/models.dart';

import '../utils/util.dart';
import 'clef.dart';
import 'mixin.dart';
import 'note.dart';

class Measure extends Validatable {
  List<Note> notes = [];
  Voice? currentVoice;
  int number;
  final int beats;
  final int beatType;

  /// For example, if duration = 1 and divisions = 2,
  /// this is an eighth note duration. 4 allows for sixteenth notes, etc.
  final int dpq;
  List<PartStaveMeasure> psm = [];
  bool isAnacrusis = false;

  int globalStartStep = 0;
  int globalEndStep = 0;

  /// in score-timewise the measure is the container for the parts
  List<Part> parts = [];

  /// the step is the next unfilled step in the measure
  /// where we fill added notes in the measure
  /// track the current step for each stave
  Map<Staff, int> currentSteps = {};

  static var _instances = 0;

  Measure({
    int? number,
    required this.beats,
    required this.beatType,
    required this.dpq,
  }) : number = number ?? _instances {
    //print("measure instance created : ${_instances}");
    _instances++;
  }

  /// int(beats) of 1/int(beatType) notes is the total number of whole
  ///  notes as the division is the number of divisions per quarter note
  ///
  int getTotalQuarterNotes() {
    /// e.e
    double totalWholeNotes = beats * (1 / beatType);
    // totalWholeNotes / (1/4) == totalWholeNotes * 4
    double totalQuarterNotes = totalWholeNotes * 4;
    return totalQuarterNotes.round();
  }

  int getTotalSteps() {
    return getTotalQuarterNotes() * dpq;
  }

  @override
  bool validate() {
    bool isValid = true;
    return isValid;
  }

  void renderTimewise() {
    // parts.map((part) => part.staves.forEach((stave) {
    //   part.parentScore.bars[part]![stave]![this]!.renderTimewise();
    // }));

    var items = <NoteSeqQuant>[];

    //print(("===>>>> rendering measure #$number start($globalStartStep) stop($globalEndStep)"));

    var obj2 = parts.map((part) => part.staves.map((stave) {
          var obj3 =
              part.parentScore.bars[part]![stave]![this]!.renderTimewise();
          //print(obj3);
          return obj3.toList();
        }).toList().expand((element) => element)).toList().expand((element) => element).toList();

    //print(obj2);

    //return obj2;

    var bufstring = (' ' * 127);

    int rows = globalEndStep - globalStartStep ;
    int cols = 127;
    var array = List.generate(rows, (_) => List.filled(cols, " "));

    for (NoteSeqQuant note in obj2) {
      //print(note);
      //print("note start(${note.startStep}) end(${note.endStep}) start-global(${note.startStep-globalStartStep}) end-endGlobal(${note.endStep-globalStartStep}) globalStartStep($globalStartStep) globalEndStep($globalEndStep)");
      for (var i = 0; i < rows; i++) {
        if (i >= (note.startStep-globalStartStep) && i < (note.endStep-globalStartStep)) {
          array[i][note.midiPitch] = "1";
        }
      }
    }

    for (var i = 0; i < rows; i++) {
      print(array[i].join());
    }





      // var obj = obj2.where((element) => element.startStep == i).toList();
      // //print(obj);
      // if (obj.isNotEmpty) {
      //   items.add(obj.first);
      // } else {
      //   items.add(NoteSeqQuant(
      //     midiPitch: 0,
      //     startStep: i,
      //     endStep: i + 1,
      //   ));
      // }



    // measures.forEach((measure) {
    //   measure.renderTimewise();
    // });
  }

  @override
  String toString() {
    return '''
    Measure{stp:$currentSteps, dpq($dpq),
    notes:
      $notes
    ''';
  }
}
