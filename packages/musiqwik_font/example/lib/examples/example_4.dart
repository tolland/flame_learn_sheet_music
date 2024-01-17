import 'package:flutter/material.dart';
import 'package:musiqwik_font/musiqwik_font.dart';

class Example4 extends StatelessWidget {
  const Example4({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: <TextSpan>[
          MusiQwik.barStart.span(),
          MusiQwik.trebleClef.span(),
          MusiQwik.keyD.span(),
          MusiQwik.fourFourTime.span(),
          MusiQwik.trCSharp4qrt.span(),
          MusiQwik.trE4qrt.span(),
          MusiQwik.trF4qrt.span(),
          MusiQwik.trG4qrt.span(),
          MusiQwik.barEnd.span(),
          MusiQwik.barStart.span(),
          MusiQwik.trA4qrt.span(),
          MusiQwik.trB4qrt.span(),
          MusiQwik.trC5qrt.span(),
          MusiQwik.trD5qrt.span(),
          MusiQwik.barEnd.span(),
        ],
      ),
    );
  }
}
