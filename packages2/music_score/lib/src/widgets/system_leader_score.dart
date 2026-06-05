import 'package:flutter/material.dart';
import 'package:music_score/music_score.dart';

import 'package:note_sequence/note_sequence.dart';

class SystemLeaderScore extends StatelessWidget {
  const SystemLeaderScore({
    super.key,
    required this.score,
  });

  final Score score;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
...score.parts.map((part) => SystemLeaderPart(part: part)).toList(),
      ],
    );
  }
}
