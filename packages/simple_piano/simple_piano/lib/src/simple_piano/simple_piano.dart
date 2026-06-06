import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logging/logging.dart';
import 'package:simple_piano/src/simple_piano/simple_piano_config.dart';

import '../../simple_piano.dart';
import 'simple_octave.dart';

class SimplePiano extends StatelessWidget {
  static final _log = Logger('SimplePiano');

  const SimplePiano({
    super.key,
    required this.config,
  });

  final SimplePianoConfig config;

  /// A SimplePiano with 49 keys starting at C3
  factory SimplePiano.keys49c() {
    int startPitch = 36;
    int noteCount = 49;

    var simpleConfig = SimplePianoConfig.fromStartEndPitch(
      startPitch,
      startPitch + noteCount - 1,
    );

    return SimplePiano(
      config: simpleConfig,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black87,
        borderRadius: BorderRadius.circular(20),
        // image: const DecorationImage(
        //   image: AssetImage(
        //       "assets/images/natural-wood-grain-background-14903911355WD.jpg",
        //       package: "sound_service"),
        //   fit: BoxFit.cover,
        //   repeat: ImageRepeat.noRepeat,
        // ),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 25, 8, 8),
            child: LayoutBuilder(builder: (context, constraints) {
              final isHeightBounded = constraints.maxHeight < double.infinity;
              final isWidthBounded = constraints.maxWidth < double.infinity;

              // Set width and height factors
              double widthFactor = 0.8;
              double heightFactor = 0.2;
              double fallbackHeight =
                  MediaQuery.of(context).size.height * heightFactor;

              double width = widthFactor *
                  (constraints.hasInfiniteWidth
                      ? MediaQuery.of(context).size.width
                      : constraints.maxWidth);
              double height = heightFactor *
                  (isHeightBounded
                      ? constraints.maxHeight
                      : MediaQuery.of(context).size.height);

              double keyWidth = width / config.whiteCount;

              // print("keyWidth $keyWidth");
              // print("total from keys ${keyWidth * config.whiteCount}");

              //final isHeightBounded = constraints.maxHeight < double.infinity;

              // print("width $width fillHeight $width");
              // print("whiteCount ${config.whiteCount}");

              return MouseRegion(
                onEnter: (_) {
                  context.read<SimplePianoBloc>().add(
                        const SimplePianoEvent.pianoEnter(),
                      );
                },
                onExit: (_) {
                  context.read<SimplePianoBloc>().add(
                        const SimplePianoEvent.pianoExit(),
                      );
                },
                child: Column(
                  children: [
                    ColoredBox(
                      color: Colors.red,
                      child: SizedBox(
                        width: width,
                        height: 3,
                      ),
                    ),
                    Container(
                      width: width,
                      height: height,
                      //height: height,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.transparent,
                          width: 0,
                        ),
                        borderRadius: BorderRadius.circular(3),
                        color: Colors.transparent,
                      ),
                      child: Stack(
                        children: [
                          for (int i = 0; i < config.octaveConfig.length; i++)
                            SimpleOctave(
                              config: config.octaveConfig[i],
                              keyWidth: keyWidth,
                              keyHeight: height,
                            ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
