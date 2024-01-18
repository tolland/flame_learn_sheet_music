import 'mixin.dart';
import 'models.dart';

class Part extends Validatable {
  final String? instrument;
  int number;
  final String? name;
  final String? description;
  //final List<Measure> measures;
  final Score parentScore;

  static var _instances = 0;

  /// these are used as defaults for new measures
  /// they can be overridden by the measure
  List<Staff> staves;

  //List<Note> notes = [];

  Part({
    int? number,
    this.instrument,
    this.name,
    this.description,
    required this.parentScore,
    List<Staff>? staves,
    //List<Measure>? measures,
  })  : staves = staves ?? [],
        //measures = measures ?? [],
        number = number ?? _instances {
    //if(this.staves.isEmpty) addStaff(Staff());
    //number ??= _instances;
    //print("part instance created : ${_instances}");
    _instances++;
  }

  // /// create a part with a single treble clef staff
  // factory Part.voice() {
  //   var part = Part(
  //     name: "Voice",
  //     description: "A single voice",
  //   );
  //   part.staves.clear();
  //   part.addStaff(
  //     Staff(
  //       parentPart: part,
  //       clef: Clef.treble,
  //       number: 1,
  //     ),
  //   );
  //   return part;
  // }

  // /// create a part with a pair of treble and bass clef staves
  // factory Part.piano() {
  //   var part = Part(
  //     name: "Piano",
  //     description: "A piano part",
  //     parentScore: null,
  //   );
  //   part.staves.clear();
  //   part.addStaff(
  //     Staff(
  //       parentPart: part,
  //       clef: Clef.treble,
  //       number: 1,
  //     ),
  //   );
  //   part.addStaff(
  //     Staff(
  //       parentPart: part,
  //       clef: Clef.bass,
  //       number: 2,
  //     ),
  //   );
  //   return part;
  // }

  Staff addStaff({
    required Clef clef,
  }) {
    var staff = Staff(
      clef: clef,
      parentPart: this,
    );
    parentScore.bars[this]![staff] = {};
    staves.add(staff);
    return staff;
  }

  @override
  bool validate() {
    var valid = false;
    for (var staff in staves) {
      valid = staff.validate() || valid;
    }
    return valid;
  }

  void renderTimewise() {
    // parts.forEach((part) {
    //   part.renderTimewise();
    // });

    // measures.forEach((measure) {
    //   measure.renderTimewise();
    // });
  }

  @override
  String toString() {
    var output = '';
    output +=
        'Part:{#$number,"$name"},stv(${staves.length})\n';
    for (Staff staff in staves) {
      output += staff.toString();
    }
    return output;
  }
}
