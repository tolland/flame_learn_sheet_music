
import 'package:sound_service_util/main.dart';

import 'simple_octave_config.dart';

/// given 2 of the 3 values, calculates the remaining values for
/// a piano widget. need to prover either startPitch and endPitch
/// or startPitch and notes, or endPitch and notes etc

class SimplePianoConfig {
  final int startPitch;
  final int endPitch;
  final int noteCount;
  final int octaves;
  final int startOctave;
  final int endOctave;
  final String startSpn;
  final String endSpn;
  final int whiteCount;
  final int blackCount;
  late final List<SimpleOctaveConfig> octaveConfig;

  SimplePianoConfig({
    required this.startPitch,
    required this.endPitch,
    required this.noteCount,
    required this.octaves,
    required this.startOctave,
    required this.endOctave,
    required this.startSpn,
    required this.endSpn,
    required this.whiteCount,
    required this.blackCount,
    required this.octaveConfig,
  });

  SimplePianoConfig.fromStartEndPitch(
    this.startPitch,
    this.endPitch,
  )   : noteCount = endPitch - startPitch + 1,
        octaves = Utils.getO4P(endPitch) - Utils.getO4P(startPitch) + 1,
        startOctave = Utils.getO4P(startPitch),
        endOctave = Utils.getO4P(endPitch),
        startSpn = Utils.getSpn(startPitch),
        endSpn = Utils.getSpn(endPitch),
        whiteCount = Utils.getWhiteCount(startPitch, endPitch),
        blackCount = (endPitch - startPitch + 1) -
            Utils.getWhiteCount(startPitch, endPitch),
        octaveConfig = [] {
    for (int i = 0; i <= endOctave-startOctave; i++) {
      octaveConfig.add(
        SimpleOctaveConfig(config: this, index: i, octave: startOctave + i),
      );
    }
  }

// SimplePianoConfig.custom({
//   int? startPitch,
//   int? endPitch,
//   int? notes,
//   String? startSpn,
//   String? endSpn,
// }) : notes = endPitch-startPitch+1,
//       octaves = Utils.getO4P(endPitch)-Utils.getO4P(startPitch)+1,
//       startOctave = Utils.getO4P(startPitch),
//       endOctave = Utils.getO4P(endPitch),
//       startSpn = Utils.getSpn(startPitch),
//       endSpn = Utils.getSpn(endPitch);
}
