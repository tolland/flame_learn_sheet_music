import 'package:flutter/material.dart';

import 'package:note_sequence/note_sequence.dart';
import 'measure_stave.dart';

class MeasurePart extends StatelessWidget {
  const MeasurePart({
    super.key,
    required this.part,
    required this.score,
    required this.measure,
  });

  final Part part;
  final Score score;
  final Measure measure;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...part.staves
            .map((stave) => MeasureStave(
                  staff: stave,
                  measure: measure,
                ))
            .toList(),
      ],
    );
  }
}
