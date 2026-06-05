import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../simple_piano.dart';

class SimpleKey extends StatelessWidget {
  SimpleKey({
    super.key,
    required this.pitch,
    required this.keyWidth,
    required this.keyHeight,
    required this.indexInOctave,
  });

  final int pitch;
  final double keyWidth;
  final double keyHeight;
  final int indexInOctave;

  bool isPressed = false;

  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    bool isWhiteKey;
    if ([0, 2, 4, 5, 7, 9, 11].contains(pitch % 12)) {
      isWhiteKey = true;
    } else {
      isWhiteKey = false;
    }
    var posLeft = isWhiteKey
        ? indexInOctave * keyWidth
        : (indexInOctave * keyWidth) - (keyWidth * (2 / 3) / 2);
    //print("posLeft $posLeft for isWhiteKey $isWhiteKey");
    return Positioned(
      left: posLeft,
      top: isWhiteKey ? 0 : 4,
      child: SizedBox(
        width: isWhiteKey ? keyWidth : keyWidth * (2 / 3),
        height: keyHeight,
        child: GestureDetector(
          // onLongPressStart: (_) {
          //   print("setting long preess down for pitch $pitch octave");
          // },
          // onLongPressEnd: (_) {
          //   print("setting long preess up for pitch $pitch octave");
          // },
          // onTapDown: (_) {
          //   //print("setting tap down for pitch $pitch octave");
          //   context
          //       .read<SimplePianoBloc>()
          //       .add(SimplePianoEvent.keyTap(number: pitch));
          // },
          // onTapUp: (details) {
          //   //print("setting tap up");
          //   context
          //       .read<SimplePianoBloc>()
          //       .add(SimplePianoEvent.keyTapUp(number: pitch));
          // },
          // onTapCancel: () {
          //   //print("setting onpressed false in $pitch");
          //   context.read<SimplePianoBloc>().add(
          //     SimplePianoEvent.keyTapCancel(
          //       number: pitch,
          //     ),
          //   );
          // },
          onPanStart: (_) {
            //print("pan started in $pitch");
            context
                .read<SimplePianoBloc>()
                .add(SimplePianoEvent.keyPanStart(number: pitch));
          },
          onPanEnd: (_) {
            //print("pan ended in $pitch");
            context.read<SimplePianoBloc>().add(
                  SimplePianoEvent.keyPanEnd(number: pitch),
                );
          },
          onPanCancel: () {
            //print("pan ended in $pitch");
            context.read<SimplePianoBloc>().add(
                  SimplePianoEvent.keyPanEnd(number: pitch),
                );
          },
          child: MouseRegion(
            onEnter: (_) {
              //print("mouse enter with state ${state.isPlaying}");
              context
                  .read<SimplePianoBloc>()
                  .add(SimplePianoEvent.keyMouseEnter(
                    number: pitch,
                  ));
            },
            onExit: (_) {
              //print("mouse exit");
              context.read<SimplePianoBloc>().add(
                    SimplePianoEvent.keyMouseExit(
                      number: pitch,
                    ),
                  );
            },
            child: BlocBuilder<SimplePianoBloc, SimplePianoState>(
              builder: (context, state) {
                return Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: isWhiteKey ? Colors.black54 : Colors.black54,
                      width: 0,
                    ),
                    color: (state.pressedKeys.contains(pitch) ||
                            state.syntheticNotes.contains(pitch))
                        ? Colors.redAccent
                        : state.hovered.contains(pitch)
                            ? Colors.yellowAccent
                            : (isWhiteKey ? Colors.grey.shade50 : Colors.black),
                  ),
                  child: Text(
                    pitch.toString(),
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.black,
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
    ;
  }
}
