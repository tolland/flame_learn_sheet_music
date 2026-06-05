import 'package:flutter/material.dart';
import 'package:music_score/music_score.dart';
import 'package:music_score/src/widgets/stupid_mapping.dart';
import 'package:musiqwik_font/musiqwik_font.dart';

import 'package:note_sequence/note_sequence.dart';

class MeasureStave extends StatelessWidget {
  const MeasureStave({
    super.key,
    required this.measure,
    required this.staff,
  });

  final Measure measure;
  final Staff staff;

  @override
  Widget build(BuildContext context) {
    List<Note> notes = staff.parentPart.parentScore.bars[staff.parentPart]![staff]![measure]!.notes!;
    return Container(
      decoration: BoxDecoration(
        // boxShadow: const [
        //   BoxShadow(
        //     color: Colors.transparent,
        //     offset: Offset(5, 5),
        //     blurRadius: 10,
        //   ),
        // ],
        // border: Border.all(
        //   color: Colors.transparent,
        //   width: 0,
        //
        // ),
      ),
      child: IntrinsicWidth(
        child: Row(
          children: [
            ...notes.map((note) => Mapping.getMappedText(note)).toList(),
            RichText(
              text: MusiQwik.barEnd.span(),
            ),
            //MusiQwik.barEnd.span(),
          ],
        ),
      ),
    );
  }
}
