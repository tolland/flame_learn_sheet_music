import 'package:flutter/material.dart';
import 'package:simple_piano/src/simple_piano/simple_key.dart';
import 'package:simple_piano/src/simple_piano/simple_octave_config.dart';
import 'package:sound_service_util/main.dart';

class SimpleOctave extends StatelessWidget {
  const SimpleOctave({
    super.key,
    required this.config,
    required this.keyWidth,
    required this.keyHeight,
  });

  final SimpleOctaveConfig config;
  final double keyWidth;
  final double keyHeight;

  @override
  Widget build(BuildContext context) {
    // print("octave:$octave \nstartPitch:$startPitch\n endPitch:$endPitch \nkeyWidth:$keyWidth");

    // bool isWhiteKey;
    // if ([0,2,4,5,7,9,11].contains(pitch%12)) {
    //   isWhiteKey = true;
    // }
    // else {
    //   isWhiteKey = false;
    // }

    List<Widget> getKeyWidgets() {
      var keyWidgets = <Widget>[];
      int whiteIndexInOctave = 0;
      for (var pitch = config.startIndex; pitch <= config.endIndex; pitch++) {
        if (!Utils.isWhite(pitch)) continue;
        keyWidgets.add(
          SimpleKey(
            indexInOctave: whiteIndexInOctave,
            pitch: (config.octave+1)*12+pitch,
            keyWidth: keyWidth,
            keyHeight: keyHeight,
          ),
        );
        if (Utils.isWhite(pitch)) {
          whiteIndexInOctave++;
        }
      }
      whiteIndexInOctave = 0;
      for (var pitch = config.startIndex; pitch <= config.endIndex; pitch++) {
        if (Utils.isWhite(pitch)) {
          whiteIndexInOctave++;
          continue;
        }
        keyWidgets.add(
          SimpleKey(
            indexInOctave: whiteIndexInOctave,
            pitch: (config.octave+1)*12+pitch,
            keyWidth: keyWidth,
            keyHeight: keyHeight*(2/3),
          ),
        );
      }
      return keyWidgets;
    }

    return Positioned(
      left: config.index * keyWidth * 7,
      height: keyHeight,
      width: keyWidth * 7,
      child: Stack(
        children: getKeyWidgets(),
      ),
    );
  }
}
