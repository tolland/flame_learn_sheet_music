import 'package:flutter/material.dart';
import 'package:musiqwik_font/musiqwik_font.dart';

import 'package:note_sequence/note_sequence.dart';

class SystemLeaderStave extends StatelessWidget {
  const SystemLeaderStave({
    super.key,
    required this.staff,
  });

  final Staff staff;

  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(
      //   border: Border.all(
      //     color: Colors.grey.shade800,
      //     width: 0,
      //   ),
      // ),
      child: IntrinsicWidth(
        child: Row(

          children: [
            RichText(
              text: MusiQwik.barStart.span(),
            ),
            RichText(
              text: staff.clef == Clef.treble ? MusiQwik.trebleClef.span() : MusiQwik.bassClef.span(),
            ),
            RichText(
              text: MusiQwik.spacer.span(),
            ),
            RichText(
              text: MusiQwik.fourFourTime.span(),
            ),
          ],
        ),
      ),
    );
  }
}
