import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:piano_widget/piano_widget.dart';
import 'package:virtual_keyboard_status/src/bloc/bloc.dart';
import 'package:virtual_keyboard_status/src/data/uk_layout.dart';

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
