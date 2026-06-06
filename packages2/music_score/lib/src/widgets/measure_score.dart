import 'package:flutter/material.dart';
import 'package:note_sequence/note_sequence.dart';

import 'measure_part.dart';

class MeasureWidgetScore extends StatelessWidget {
  const MeasureWidgetScore({
    super.key,
    required this.measure,
    required this.score,
  });

  final Measure measure;
  final Score score;

  @override
  Widget build(BuildContext context) {
    return Container(
      //decoration: Utils.debugBoxDecoration(),
      child: Column(
        children: [
          ...score.parts
              .map((part) => MeasurePart(
                    part: part,
                    measure: measure,
                    score: score,
                  ))
              ,
        ],
      ),
    );
  }
}
