import 'dart:math';

import 'package:note_sequence/src/model/models.dart';

import 'mixin.dart';
import 'models.dart';
import '../utils/utils.dart';

class Staff extends Validatable {
  int number;
  final Clef clef;
  Part parentPart;
  //Score score;
  List<PartStaveMeasure> psm = [];

  static var _instances = 0;

  Staff({
    int? number,
    required this.clef,
    required this.parentPart,
  }) : number = number ?? _instances {
    //print("staff instance created : ${_instances}");
    _instances++;
  }

  @override
  bool validate() {
    // for (Measure measure in measures) {
    //   List<Note> measureNotes = getNotes(measure);
    //   // loop the notes in the measure and sum the durations
    //   var result =
    //       measureNotes.map((note) => note.duration).reduce((a, b) => a + b);
    //   print("result is $result");
    //
    //
    // }
    return true;
  }

  @override
  String toString() {
    var output = '';
    // -${hashCode.toString().padRight(10,' ')}
    output += 'Staff{#$number,${clef.toString().tr(5, 9)})}:\n';
    List<PartStaveMeasure> test =
        parentPart.parentScore.bars[parentPart]![this]!.values.toList();
    for (PartStaveMeasure psm in test) {
      //List<Note> measureNotes = getNotes(measure);
      output += "Msr#${psm.measure.number}:";
      output += psm.notes.map((note) => note.toString()).join(":");
      output += "|\n";
    }
    //output += "\n";

    return output;
  }
}
