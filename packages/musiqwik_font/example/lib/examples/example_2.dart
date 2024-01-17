import 'package:flutter/material.dart';
import 'package:musiqwik_font/musiqwik_font.dart';

class Example2 extends StatelessWidget {
  const Example2({super.key, this.customFontSize = 45});

  final double customFontSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: RichText(
        text: TextSpan(
          children: [
            MusiQwik.barStart,
            MusiQwik.trebleClef,
            MusiQwik.keyD,
            MusiQwik.fourFourTime,
            MusiQwik.spacer,
            MusiQwik.trD4qrt,
            MusiQwik.spacer,
            MusiQwik.spacer,
            MusiQwik.trE4qrt,
            MusiQwik.spacer,
            MusiQwik.spacer,
            MusiQwik.trF4qrt,
            MusiQwik.spacer,
            MusiQwik.spacer,
            MusiQwik.trG4qrt,
            MusiQwik.spacer,
            MusiQwik.barEnd,
          ].map((obj) => obj.span(customFontSize)).toList(),
        ),
      ),
    );
  }
}
