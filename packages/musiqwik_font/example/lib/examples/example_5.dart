import 'package:flutter/material.dart';
import 'package:musiqwik_font/musiqwik_font.dart';

class Example5 extends StatelessWidget {
  const Example5({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        RichText(
          text: TextSpan(
            children: <TextSpan>[
              MusiQwik.barStart.span(),
              MusiQwik.bassClef.span(),
              MusiQwik.fourFourTime.span(),
              MusiQwik.baC2qrt.span(),
              MusiQwik.baCSharp2qrt.span(),
              MusiQwik.baD2qrt.span(),
              MusiQwik.baDSharp2qrt.span(),
              MusiQwik.barEnd.span(),
              MusiQwik.barStart.span(),
              MusiQwik.baE2qrt.span(),
              MusiQwik.trB4qrt.span(),
              MusiQwik.trC5qrt.span(),
              MusiQwik.trD5qrt.span(),
              MusiQwik.barEnd.span(),
            ],
          ),
        ),
      ],
    );
  }
}
