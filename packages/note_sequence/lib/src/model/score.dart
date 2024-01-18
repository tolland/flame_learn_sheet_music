import 'package:note_sequence/src/model/models.dart';

import '../utils/util.dart';

typedef Bars = Map<Part, Map<Staff, Map<Measure, PartStaveMeasure>>>;

class Score {
  final String? id;
  final String? title;
  final String? description;

  // these are the intial time signature values
  final int initialBeats;
  final int initialBeatType;
  final int initialDpq;

  List<Measure> measures;
  List<Part> parts;

  final Bars bars;

  Measure? currentMeasure;
  Part? currentPart;
  Staff? currentStaff;

  Score({
    this.id,
    this.title,
    this.description,
    required this.initialBeats,
    required this.initialBeatType,
    required this.initialDpq,
    List<Part>? parts,
    List<Measure>? measures,
    Bars? bars,
  })  : parts = parts ?? [],
        measures = measures ?? [],
        bars = bars ?? {} {}

  Part addPart({
    required String name,
    required String description,
  }) {
    assert(measures.isEmpty);

    Part part = Part(
      name: name,
      description: description,
      parentScore: this,
    );

    parts.add(part);
    currentPart = part;
    if (bars.containsKey(part)) {
      print(this);
      print(bars);
      throw Exception("Part already exists");
    } else {
      bars[part] = {};
    }
    return part;
  }

  Measure addMeasure() {
    //var totSteps = measures.map((measure) => measure.getTotalSteps()).reduce((a, b) => a + b);

    var totSteps = 0;
    measures.forEach((measure) {
      totSteps += measure.getTotalSteps();
    });

    var measure = Measure(
      beats: initialBeats,
      beatType: initialBeatType,
      dpq: initialDpq,
    );

    measure.globalStartStep = totSteps;
    measure.globalEndStep = totSteps + measure.getTotalSteps();
    // print("globalStartStep ${measure.globalStartStep}");
    // print("globalEndStep ${measure.globalEndStep}");

    measures.add(measure);
    currentMeasure = measure;
    for (Part part in parts) {
      /// recipricol link for score-partwise
      measure.parts.add(part);
      for (Staff staff in part.staves) {
        var partStaveMeasure = PartStaveMeasure(
          stave: staff,
          measure: measure,
        );
        assert(bars[part] != null);
        bars[part]![staff]![measure] = partStaveMeasure;
      }
    }
    return measure;
  }

  /// create note with pitch and duration.
  /// The note is added to the measure and the step is incremented.
  Note addNote({
    required Pitch pitch,
    required NoteDuration duration,
    Staff? staff,
    Measure? measure,
  }) {
    assert(parts.isNotEmpty);
    assert(measures.isNotEmpty);

    Measure thismeasure;
    if (measure != null) {
      thismeasure = measure;
    } else if (currentMeasure != null) {
      thismeasure = currentMeasure!;
    } else {
      throw Exception("No measure to add note to");
    }

    Staff thisstaff;
    if (staff != null) {
      thisstaff = staff;
    } else if (currentStaff != null) {
      thisstaff = currentStaff!;
    } else {
      throw Exception("No staff to add note to");
    }

    int currentStep = thismeasure.currentSteps[thisstaff] ?? 0;

    var endStep = currentStep +
        Util.getStepFromDuration(
          duration,
          thismeasure.dpq,
        );

    var note = Note(
      measure: thismeasure,
      staff: thisstaff,
      pitch: pitch,
      startStep: currentStep,
      endStep: endStep,
      type: duration,
    );

    thismeasure.currentSteps[thisstaff] = endStep;

    bars[thisstaff.parentPart]![thisstaff]![thismeasure]!.notes.add(note);

    return note;
  }

  int get measuresCount {
    return measures.length;
  }

  bool validate() {
    bool isValid = true;

    isValid &= parts.every((part) => part.validate());
    isValid &= measures.every((measure) => measure.validate());
    //isValid &= bars.every(

    bars.forEach((part, staffs) {
      staffs.forEach((staff, measures) {
        measures.forEach((measure, psm) {
          isValid &= psm.validate();
        });
      });
    });

    // for(var item in bars) {
    //
    // }


    return isValid;
  }

  void renderTimewise() {

    int globalTimeIncrement = 0;
    measures.forEach((measure) {

      var obj4 = measure.renderTimewise();
      //print(obj4);
      //globalTimeIncrement += measure.getTotalSteps();
    });
  }

  @override
  String toString() {
    var output = '';
    output +=
        'Score{$id,$title,pts:(${parts.length}),msr(${measures.length})\n';

    for (Part part in parts) {
      output += part.toString();
    }

    output += '\n';

    return output;
  }
}
