import 'package:flutter/material.dart';
import 'package:music_score/music_score.dart';

import 'package:note_sequence/note_sequence.dart';

class SystemLeaderPart extends StatelessWidget {
  const SystemLeaderPart({
    super.key,
    required this.part,
  });

  final Part part;

  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(
      //   border: Border.all(
      //     color: Colors.red.shade800,
      //     width: 0,
      //   ),
      // ),
      child: Column(
        children: [
          ...part.staves.map((stave) => SystemLeaderStave(staff: stave)).toList(),
        ],
      ),
    );
  }
}
