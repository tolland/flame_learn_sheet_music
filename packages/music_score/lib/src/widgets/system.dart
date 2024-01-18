import 'package:flutter/material.dart';
import 'package:music_score/music_score.dart';

import 'package:note_sequence/note_sequence.dart';
import 'measure_score.dart';

/// Note Sequence system is a
class NoteSequenceSystem extends StatelessWidget {
  const NoteSequenceSystem({
    super.key,
    required this.score,
  });

  NoteSequenceSystem.fromScore({
    super.key,
    required this.score,
  });

  final Score score;

  @override
  Widget build(BuildContext context) {

    return Directionality(
      textDirection: TextDirection.ltr,
      child: Wrap(
        children: [
          SystemLeaderScore(score: score),
          ...score.measures.map((measure) => MeasureWidgetScore(measure: measure, score: score)).toList(),
        ],
      ),
    );
  }

  // List<Widget> _makeSystemGrid() {
  //   List<Widget> items = [];
  //
  //   for (Part part in score.parts) {
  //     for (Staff staff in part.staves) {
  //       items.add(_makeStaffLeader(staff));
  //       items.addAll(_makeMeasuresForStaff(part, staff));
  //     }
  //   }
  //   return items;
  // }

  // List<Widget> _makeMeasuresForStaff(Part part, Staff staff) {
  //   var items = <Widget>[];
  //   for (var measure in score.measures) {
  //
  //     items.addAll(_makeMeasureForStaff(staff, measure));
  //   }
  //   return items;
  // }

  // Widget _makeStaffLeader(Staff staff) {
  //  // print("creating a leader for staff ${staff.clef}");
  //   return SystemLeaderScore(clef: staff.clef);
  // }
  //
  // List<Widget> _makeMeasureForStaff(Staff staff, Measure measure){
  //   List<Widget> items = [];
  //   items.add(MeasureWidgetScore(
  //       staff: staff,
  //       measure: measure,
  //     score: score,
  //   ));
  //   return items;
  // }

  List<Widget> _makeMeasures() {
    return score.parts.map((part) => _makePart(part)).toList();
  }

  Widget _makePart(Part part) {
    for (Staff stave in part.staves) {
      // for measure in stave.measures {
      //   for note in measure.notes {
      //     print("note: $note");
      //   }
      // }
    }
    return Container(
      width: 200,
      height: 200,
      color: Colors.green,
    );
  }
}
