import 'dart:math';

import 'package:ansi_codes/ansi_codes.dart';
import 'package:flutter/foundation.dart';
import 'package:logging/logging.dart';

class Utils {
  // private constructor
  Utils._();

  static void setupLogging({
    bool colorize = false,
  }) {
    Logger.root.level = kDebugMode ? Level.CONFIG : Level.INFO;
    hierarchicalLoggingEnabled = true;
    Logger.root.onRecord.listen((record) {
      // dev.log(
      //   record.message,
      //   time: record.time,
      //   level: record.level.value,
      //   name: record.loggerName,
      // );
      var openstring = '';
      var closestring = '';
      switch (record.level) {
        case Level.SEVERE:
          openstring = ansiCodes.red.open;
          closestring = ansiCodes.red.close;
          break;
        case Level.WARNING:
          openstring = ansiCodes.yellow.open;
          closestring = ansiCodes.yellow.close;
          break;
        case Level.INFO:
          openstring = ansiCodes.blue.open;
          closestring = ansiCodes.blue.close;
          break;
        default:
          openstring = ansiCodes.green.open;
          closestring = ansiCodes.green.close;
          break;
      }

      if(colorize) {
        print(
            '${ansiCodes.grey.open}[${record.loggerName.substring(0,
                record.loggerName.length > 16 ? 16 : record.loggerName.length)
                .padRight(16)}]${ansiCodes.grey.close} ${openstring}${record
                .level.name.padRight(7)}:${closestring} ${record.message}');
      }else {
        print(
            '${record
                .level.name.padRight(7)} [${record.loggerName.substring(0,
                record.loggerName.length > 16 ? 16 : record.loggerName.length)
                .padRight(16)}] ${record.message}');

      }
    });
  }

  static double getFrequency(int midi) {
    return 440.0 * pow(2.0, (midi - 69) / 12.0);
  }

  /// get the start midi pitch for the octave
  static int getSp4O(int octave) {
    return (octave + 1) * 12;
  }

  /// get the end midi pitch for the octave
  static int getEp4O(int octave) {
    return ((octave + 2) * 12) - 1;
  }

  /// get the octave for some midi pitch
  static int getO4P(int pitch) {
    return (((pitch - pitch % 12) / 12) - 1).round();
  }

  /// is the pitch a white key
  static bool isWhite(int pitch) {
    return [0, 2, 4, 5, 7, 9, 11].contains(pitch % 12);
  }

  /// count the white keys between 2 pitches inclusive
  static int getWhiteCount(int startPitch, int endPitch) {
    var count = 0;
    List<int> whites = [0, 2, 4, 5, 7, 9, 11];
    for (int i = startPitch; i <= endPitch; i++) {
      if (whites.contains(i % 12)) {
        count++;
      }
    }
    return count;
  }

  /// get the index of the white key in the octave
  /// this only returns sharps
  static String getSpn(int midi) {
    final int octave = (midi / 12).floor() - 1;
    final int note = midi % 12;
    final String noteName = _noteNames[note];
    return '$noteName$octave';
  }

  /// list of the note names i.e. 'C' 'F#'
  static const List<String> _noteNames = [
    'C',
    'C#',
    'D',
    'D#',
    'E',
    'F',
    'F#',
    'G',
    'G#',
    'A',
    'A#',
    'B'
  ];
}
