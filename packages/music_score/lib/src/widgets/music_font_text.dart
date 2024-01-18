import 'package:flutter/material.dart';

class MusicText extends StatelessWidget {
  const MusicText(this.text, {super.key});

  final String text;


  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
          //debugLabel: 'ClefQuestBarFont',
          fontFamily: 'MusiQwik',
          //package: 'note_sequence',
          fontSize: 45.0,
          color: Colors.black,
          fontWeight: FontWeight.normal,
          decoration: TextDecoration.none,
        ));
  }
}
