import 'package:flutter/material.dart';
import 'package:sound_service_util/main.dart';

import '../../piano_waterfall.dart';

class NoteData {
  final int pitch;
  final int tickStart;
  int tickEnd;
  final bool isWhiteKey;

  NoteData({
    required this.pitch,
    required this.tickStart,
    this.tickEnd = -1,
  }) : isWhiteKey = [0, 2, 4, 5, 7, 9, 11].contains(pitch % 12);
}

class PianoWaterfallNote extends StatelessWidget {
  const PianoWaterfallNote({
    super.key,
    required this.tileData,
    required this.totWidth,
    required this.totalHeight,
    required this.currentNoteIndex,
    required this.mode,
    required this.whiteCount,
    required this.blackCount,
    required this.startPitch,
    required this.pitchCount,
    required this.whiteWidth,
    required this.blackWidth,
  });

  final NoteData tileData;
  final double totWidth;
  final double totalHeight;
  final int currentNoteIndex;
  final PianoWaterfallMode mode;
  final int whiteCount;
  final int blackCount;
  final int startPitch;
  final int pitchCount;
  final double whiteWidth;
  final double blackWidth;

  @override
  Widget build(BuildContext context) {
    // @TODO(tolland) most of this stuff doesn't need to be calculated per kwy
    var endPitch = startPitch + pitchCount - 1;
    var whiteIndex = Utils.getWhiteCount(startPitch, tileData.pitch) - 1;
    //print("whiteIndex is $whiteIndex");
    double posLeft = (totWidth) * (whiteIndex / whiteCount) + (tileData.isWhiteKey ? 0 : 0.75 * whiteWidth);
    //if(!tileData.isWhiteKey) posWidth = blackWidth;
    double vTick = 12.5; // vertical distance per tick
    double vBuffer = 5; // vertical buffer for un-as-yet ticked On notes

    double posTop;
    double posHeight;

    switch (mode) {
      case PianoWaterfallMode.topToBottom:
        posTop = tileData.tickEnd == -1
            ? 0
            : ((currentNoteIndex - tileData.tickEnd).toDouble() * vTick) +
                vBuffer;
        posHeight = tileData.tickEnd == -1
            ? (currentNoteIndex - tileData.tickStart) * vTick + vBuffer
            : (tileData.tickEnd - tileData.tickStart) * vTick;

      case PianoWaterfallMode.bottomToTop:
        posHeight = tileData.tickEnd == -1
            ? ((currentNoteIndex - tileData.tickStart) * vTick) + vBuffer
            : (tileData.tickEnd - tileData.tickStart) * vTick;
        posTop = tileData.tickEnd == -1
            ? totalHeight - posHeight
            : totalHeight-
            ((currentNoteIndex - tileData.tickStart).toDouble() * vTick);

      default:
        throw UnimplementedError();
    }

    // print(
    //      "drawing tile on at left(${posLeft.toStringAsFixed(2)}), top(${posTop.toStringAsFixed(2)}), w(${posWidth.toStringAsFixed(2)}), h(${posHeight.toStringAsFixed(2)}) totWidth(${totWidth.toStringAsFixed(2)}) tickStart(${tileData.tickStart}) tickEnd(${tileData.tickEnd}) totalHeight($totalHeight)");
    return Positioned(
      left: posLeft,
      top: posTop,
      width: tileData.isWhiteKey ? whiteWidth : blackWidth,
      height: posHeight,
      child: Container(
        decoration: BoxDecoration(
          color: tileData.isWhiteKey ? Colors.white : Colors.black,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: Colors.black87,
            width: 1,
          ),
        ),
        // child: Text("egg off"),
      ),
    );
  }
}
