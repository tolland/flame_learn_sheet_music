import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logging/logging.dart';
import 'package:piano_widget/piano_widget.dart';
import 'package:virtual_piano/virtual_piano.dart';

import '../bloc/keyboard/piano_bloc.dart';
import '../learn_sheet_music.dart';
import '../managers/note_manager.dart';

class VirtualKeyboard extends StatelessWidget {
  static final _log = Logger('VirtualKeyboard');
  // const VirtualKeyboard({
  //   Key? key,
  //   required this.game,
  // }) : super(key: key);

  // final LearnSheetMusicGame game;

  Widget buildKey(
      double width, double height, MapEntry<String, int> pitch, octaveNum) {
    // print("calling buildKey with $width, $height, $pitch");
    return MyKeyWidget(
        width: width, height: height, pitch: pitch, octaveNum: octaveNum);
  }

  @override
  Widget build(BuildContext context) {
    //print("calling build in virtual keyboard");
    //c PianoBloc bloc = context.read<PianoBloc>();

    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
          ),
        ),
        Center(
          child: Container(
            color: Colors.grey.shade800,
            width: 1000,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: PianoWidget.keys49(
                keyBuilder: buildKey,
                height: 120,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class MyKeyWidget extends StatefulWidget {
  static final _log = Logger('MyKeyWidget');

  final double width;
  final double height;
  final MapEntry<String, int> pitch;
  final int octaveNum;

  const MyKeyWidget({
    required this.width,
    required this.height,
    required this.pitch,
    Key? key,
    required this.octaveNum,
  }) : super(key: key);

  @override
  State<MyKeyWidget> createState() => _MyKeyWidgetState();
}

class _MyKeyWidgetState extends State<MyKeyWidget> {
  static final _log = Logger('_MyKeyWidgetState');

  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    //print("calling build in _MyKeyWidgetState");

    return GestureDetector(
      onTapDown: (_) {
        _log.finer(() => "setting tap down");
        context.read<PianoBloc>().add(
            PianoKeyPlayed(pitch: NoteManager.keys["${widget.pitch.key}${widget.octaveNum}"]!));
        //bloc.add(PianoKeyPressed(key: widget.pitch.key));
        setState(() {
          isPressed = true;
        });
      },
      onTapUp: (_) {
        _log.finer(() => "setting tap up");
        context.read<PianoBloc>().add(
            PianoKeyReleased(pitch: NoteManager.keys["${widget.pitch.key}${widget.octaveNum}"]!));
        setState(() {
          isPressed = false;
        });
      },
      onTapCancel: () {
        _log.finer(() => "setting cancelled");
        setState(() {
          isPressed = false;
        });
      },
      child: Container(
        width: widget.width,
        height: widget.height,
        decoration: BoxDecoration(
          color: isPressed
              ? Colors.red
              : (widget.pitch.key.contains('#') ? Colors.black : Colors.white),
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(5),
            bottomRight: Radius.circular(5),
          ),
        ),
        // child: Column(
        //   children: [
        //     Expanded(child: Padding(padding: EdgeInsets.only(top: 5))),
        //     Text(
        //       "${widget.pitch.key}${widget.octaveNum}",
        //       style: TextStyle(
        //         color: Colors.red,
        //         fontSize: 10,
        //       ),
        //     ),
        //   ],
        // ),
      ),
    );
  }
}
