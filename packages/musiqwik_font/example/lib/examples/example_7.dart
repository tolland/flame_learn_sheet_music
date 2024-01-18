import 'package:flutter/material.dart';
import 'package:musiqwik_font/musiqwik_font.dart';

class Example7 extends StatelessWidget {
  const Example7({super.key, this.customFontSize = 45});

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
            MusiQwik.baA2eig,
            MusiQwik.spacer,
            MusiQwik.spacer,
            MusiQwik.trA2sxt,
            MusiQwik.spacer,
            MusiQwik.spacer,
            MusiQwik.trD4eig,
            MusiQwik.spacer,
            MusiQwik.spacer,
            MusiQwik.trE4eig,
            MusiQwik.spacer,
            MusiQwik.barEnd,
          ].map((obj) => obj.span()).toList(),
        ),
      ),
    );
  }
}
