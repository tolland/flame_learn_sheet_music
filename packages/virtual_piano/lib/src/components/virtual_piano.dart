import 'package:flutter/material.dart';
import 'package:piano_widget/piano_widget.dart';
import 'package:logging/logging.dart';

class VirtualPiano extends StatelessWidget {
  static final _log = Logger('VirtualPiano');

  final String startNote;
  final int startOctave;
  final int numKeys;

  const VirtualPiano({
    super.key,
    this.startNote = "C",
    this.startOctave = 3,
    this.numKeys = 49,
  });

  Widget buildKey(
    double width,
    double height,
    MapEntry<String, int> pitch,
    int octaveNum,
  ) {
    // print("calling buildKey with $width, $height, $pitch");
    return MyKeyWidget(
      width: width,
      height: height,
      pitch: pitch,
      octaveNum: octaveNum,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          //padding: const EdgeInsets.all(16),
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
              ),
            ),
            Container(
              color: Colors.grey.shade800,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: PianoWidget.keys49(
                  keyBuilder: buildKey,
                  height: 150,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyKeyWidget extends StatefulWidget {
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
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) {
        //print("setting tap down for pitch ${widget.pitch} octave ${widget.octaveNum}");
        // context.read<PianoBloc>().add(
        //     PianoKeyPlayed(pitch: NoteManager.keys["${widget.pitch.key}${widget.octaveNum}"]!));
        //bloc.add(PianoKeyPressed(key: widget.pitch.key));
        setState(() {
          isPressed = true;
        });
      },
      onTapUp: (_) {
        print("setting tap up");
        // context.read<PianoBloc>().add(
        //     PianoKeyReleased(pitch: NoteManager.keys["${widget.pitch.key}${widget.octaveNum}"]!));
        setState(() {
          isPressed = false;
        });
      },
      onTapCancel: () {
        //print("setting cancelled");
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
      ),
    );
  }
}
