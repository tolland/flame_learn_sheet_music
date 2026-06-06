import 'package:sound_service_util/main.dart';

import 'simple_piano_config.dart';

class SimpleOctaveConfig {
  /// index of octave in piano
  final int index;

  /// spn of octave
  final int octave;

  /// number of white keys in octave
  late final int whiteCount;

  /// number of black keys in octave
  late final int blackCount;

  /// if octave is part octave which index in octave does it start on
  late final int startIndex;

  /// if octave is part octave which index in octave does it end on
  late final int endIndex;

  final SimplePianoConfig config;

  SimpleOctaveConfig({
    required this.config,
    required this.index,
    required this.octave,
  }) {
    // @TODO handle case that octave is out of range
      if(Utils.getSp4O(octave) > config.startPitch) {
        startIndex = 0;
      } else {
        startIndex = config.startPitch % 12;
      }
      if(Utils.getEp4O(octave) < config.endPitch) {
        endIndex = 11;
      } else {
        endIndex = config.endPitch % 12;
      }
      whiteCount = Utils.getWhiteCount(startIndex, endIndex);
      blackCount = (endIndex-startIndex+1) - whiteCount;
  }
}
