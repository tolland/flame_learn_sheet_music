import 'package:flutter/material.dart';
import 'package:musiqwik_font/musiqwik_font.dart';

class Example3 extends StatelessWidget {
  const Example3({super.key, this.customFontSize = 65});

  final double customFontSize;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          MusiQwik.barStart,
          MusiQwik.trebleClef,
          MusiQwik.spacer,
          MusiQwik.spacer,
          MusiQwik.fourFourTime,
          MusiQwik.trC4qrt,
          MusiQwik.trD4qrt,
          MusiQwik.trE4qrt,
          MusiQwik.trF4qrt,
          MusiQwik.barEnd,
          MusiQwik.barStart,
          MusiQwik.trG4qrt,
          MusiQwik.trA4qrt,
          MusiQwik.trB4qrt,
          MusiQwik.trC5qrt,
          MusiQwik.barEnd,
        ].map((obj) => obj.span(fontSize: customFontSize)).toList(),
      ),
    );
  }
}
