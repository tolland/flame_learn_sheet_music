import 'package:flutter/material.dart';

import '../model/measure.dart';
import '../model/staff.dart';
import '../utils/glyphs.dart';
import 'music_font_text.dart';

class MeasureWidget extends StatefulWidget {
  const MeasureWidget({
    super.key,
    required this.measure,
    required this.staff,
  });

  final Measure measure;
  final Staff staff;

  @override
  State<MeasureWidget> createState() => _MeasureWidgetState();
}

class _MeasureWidgetState extends State<MeasureWidget> {

  List<Widget> _getNotes(Staff staff){
    List<Widget> notes = [];
    print("processing  ${staff.notes.length} notes for staff ${staff.clef} ${staff.hashCode}");
    notes.add(MusicText("!"));
    for (var note in staff.notes){
      notes.add(MusicText(Glyphs.keys[note.pitch.spn]?.glyph));
    }
    return notes;
  }

  @override
  Widget build(BuildContext context) {

    var staff;
    for (var s in widget.measure.staves){
      if (s.clef == widget.staff.clef){
        staff = s;
        break;
      }
    }

    return Row(
      children: _getNotes(staff),
    );
  }
}
