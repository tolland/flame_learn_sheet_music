import 'package:flutter/widgets.dart';

import 'key_widget.dart';

Widget buildKey(double width, double height, MapEntry<String, int> pitch, int octaveNum) {
  return KeyWidget(width: width, height: height, pitch: pitch, octaveNum: octaveNum);
}

class OctaveWidget extends StatelessWidget {
  final double whiteKeyWidth;
  final double height;
  final double divider;
  final List<MapEntry<String, int>> pitches;
  final KeyBuilder keyBuilder;
  final int octaveNum;

  const OctaveWidget({
    Key? key,
    required this.whiteKeyWidth,
    required this.height,
    required this.pitches,
    required this.divider,
    required this.octaveNum,
    this.keyBuilder = buildKey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final count = pitches.length;
    final whites = pitches.where((e) => !e.key.contains('#')).toList();
    final whiteCount = whites.length;
    final width = whiteCount * whiteKeyWidth + (whiteCount - 1) * divider;
    //print("width $width height $height divider $divider count $count whiteCount $whiteCount");
    return SizedBox(
      width: width,
      height: height,
      child: Stack(
        children: [
          for (var i = 0; i < count; i++) ...[
            if (!pitches[i].key.contains('#'))
              Builder(builder: (context) {
                final index = whites.indexOf(pitches[i]);
                return Positioned.fromRect(
                  rect: Rect.fromLTWH(
                    index * (whiteKeyWidth + divider),
                    0,
                    whiteKeyWidth,
                    height,
                  ),
                  child: keyBuilder(whiteKeyWidth, height, whites[index], octaveNum),
                );
              }),
            if (!pitches[i].key.contains('#') &&
                i > 0 &&
                pitches[i - 1].key.contains('#'))
              Builder(builder: (context) {
                final index = whites.indexOf(pitches[i]);
                return Positioned.fromRect(
                  rect: Rect.fromCenter(
                    center:
                        Offset(index * (whiteKeyWidth + divider), height / 3),
                    width: whiteKeyWidth * 3 / 4,
                    height: height * 2 / 3,
                  ),
                  child: keyBuilder(whiteKeyWidth, height, pitches[i - 1], octaveNum),
                );
              })
          ]
        ],
      ),
    );
  }
}
