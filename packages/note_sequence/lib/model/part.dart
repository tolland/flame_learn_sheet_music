import 'package:note_sequence/model/staff.dart';

import 'clef.dart';
import 'measure.dart';

class Part {
  final String? instrument;
  int? number;
  final String? name;
  final String? description;

  static var _instances = 0;

  /// these are used as defaults for new measures
  /// they can be overridden by the measure
  List<Staff> staves;
  /// For example, if duration = 1 and divisions = 2,
  /// this is an eighth note duration. 4 allows for sixteenth notes, etc.
  int divisionsPerQuarterNote = 4;

  List<Measure> measures = [];

  Part({
    this.number,
    this.instrument,
    this.name,
    this.description,
    List<Staff>? staves,
  }) : staves = staves ?? [] {
    if(this.staves.isEmpty) addStaff(Staff());
    number ??= _instances;
    _instances++;
  }

  /// create a part with a single treble clef staff
  factory Part.voice() {
    var part = Part(
      name: "Voice",
      description: "A single voice",
    );
    part.staves.clear();
    part.addStaff(Staff(clef: Clef.treble));
    return part;
  }

  /// create a part with a pair of treble and bass clef staves
  factory Part.piano() {
    var part = Part(
      name: "Piano",
      description: "A piano part",
    );
    part.staves.clear();
    part.addStaff(Staff(clef: Clef.treble));
    part.addStaff(Staff(clef: Clef.bass));
    return part;
  }

  Staff addStaff(Staff staff) {
    staves.add(staff);
    return staff;
  }

  Measure addMeasure(Measure measure) {
    measure.divisionsPerQuarterNote ??= divisionsPerQuarterNote;
    if(measure.staves.isEmpty) {
      for (var staff in staves) {
        measure.staves.add(staff.copyWith(notes: []));
      }
    }
    measures.add(measure);
    return measure;
  }



  @override
  String toString() {
    return '''
    Part:
      name: $name, description: $description
      instrument: $instrument, number: $number 
    measures: 
      $measures
    ''';
  }
}
