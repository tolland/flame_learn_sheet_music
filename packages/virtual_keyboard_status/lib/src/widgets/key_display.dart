import 'package:flutter/material.dart';

import 'key_display_stack.dart';

class SimplePianoKeyDisplay extends StatelessWidget {
  const SimplePianoKeyDisplay({super.key});

  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: BoxDecoration(
        color: Colors.green,
        border: Border.all(
          color: Colors.black,
          width: 2,
        ),
      ),
      child: SimplePianoKeyDisplayStack(),
    );
  }
}
