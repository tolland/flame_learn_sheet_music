import 'package:flutter/material.dart';
import 'package:note_sequence/utils/note_glyph.dart';

import '../model/clef.dart';
import '../utils/glyphs.dart';

class SystemLeader extends StatelessWidget {
  const SystemLeader({
    super.key,
    required this.clef,
  });

  final Clef clef;

  String _clefToGlyph(Clef clef) {
    switch (clef) {
      case Clef.treble:
        return NoteGlyph.trebleClef.text;
      case Clef.bass:
        return NoteGlyph.bassClef.text;
      default:
        return NoteGlyph.trebleClef.text;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("\u0027",
            style: TextStyle(
              //debugLabel: 'ClefQuestBarFont',
              fontFamily: 'MusiQwik',
              //package: 'note_sequence',
              fontSize: 45.0,
              color: Colors.black,
              fontWeight: FontWeight.normal,
              decoration: TextDecoration.none,
            )),
        Text(_clefToGlyph(clef),
            style: TextStyle(
              //debugLabel: 'ClefQuestBarFont',
              fontFamily: 'MusiQwik',
              //package: 'note_sequence',
              fontSize: 45.0,
              color: Colors.black,
              fontWeight: FontWeight.normal,
              decoration: TextDecoration.none,
            )),
        Text(Glyphs.keys["keyDMajor"]?.glyph,
            style: TextStyle(
              //debugLabel: 'ClefQuestBarFont',
              fontFamily: 'MusiQwik',
              //package: 'note_sequence',
              fontSize: 45.0,
              color: Colors.black,
              fontWeight: FontWeight.normal,
              decoration: TextDecoration.none,
            )),
        Text(Glyphs.keys["fourFourTime"]?.glyph,
            style: TextStyle(
              //debugLabel: 'ClefQuestBarFont',
              fontFamily: 'MusiQwik',
              //package: 'note_sequence',
              fontSize: 45.0,
              color: Colors.black,
              fontWeight: FontWeight.normal,
              decoration: TextDecoration.none,
            )),
      ],
    );
  }
}
