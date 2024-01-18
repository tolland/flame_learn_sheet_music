import 'dart:math';

import '../model/models.dart';

extension NumberParsing on String {
  int parseInt() {
    return int.parse(this);
  }

  String tr(int i, [int j = 0]) {
    int start = min(i, j);
    int end = max(i, j);
    return substring(start, min(end, length));
  }
}

var counter = 0;
void pr() {
  print("counter is ${counter++}");
}

class Util {
  static Pitch fromSpn(String spn) {
    final step = parseStep(spn);
    final alter = parseAlter(spn);
    final octave = parseOctave(spn);
    final midiNumber = parseMidiNumber(step, alter, octave);
    final frequency = parseFrequency(midiNumber);
    final canSpn = canonicalizeSpn(spn);
    return Pitch(step, alter, octave, midiNumber, frequency, canSpn);
  }

  /// upper case, no special characters
  static String canonicalizeSpn(String spn) {
    if (spn == "rest") return "rest";
    assert(spn.length == 2 || spn.length == 3);
    if (spn.length == 2) return spn.toUpperCase();
    var alter = spn[1].replaceFirst('♯', '#').replaceFirst('♭', 'b');
    return "${spn[0].toUpperCase()}$alter${spn[2]}";
  }

  static int parseOctave(String spn) {
    if (spn == "rest") return 4;
    assert(spn.length == 2 || spn.length == 3);
    if (spn.length == 2) return int.parse(spn[1]);
    return int.parse(spn[2]);
  }

  static int parseMidiNumber(PitchClass step, double alter, int octave) {
    if (step == PitchClass.undefined) return -1;
    final midiNumber =
        12 + stepToMidiNumber[step]! + octave * 12 + alter.toInt();
    return midiNumber;
  }

  static Map<PitchClass, int> stepToMidiNumber = {
    PitchClass.C: 0,
    PitchClass.D: 2,
    PitchClass.E: 4,
    PitchClass.F: 5,
    PitchClass.G: 7,
    PitchClass.A: 9,
    PitchClass.B: 11,
  };

  static double parseAlter(String spn) {
    if (spn == "rest") return 0.0;
    assert(spn.length == 2 || spn.length == 3);
    if (spn.length != 3) return 0.0;
    final alter = spn[1];
    switch (alter) {
      case '#':
      case '♯':
        return 1.0;
      case 'b':
      case '♭':
        return -1.0;
      default:
        return 0.0;
    }
  }

  static double parseFrequency(int midiNumber) {
    return 440.0 * (pow(2.0, ((midiNumber - 69) / 12.0)));
  }

  static PitchClass parseStep(String spn) {
    if (spn == "rest") return PitchClass.undefined;
    assert(spn.length == 2 || spn.length == 3);
    final step = spn[0];
    switch (step.toUpperCase()) {
      case 'C':
        return PitchClass.C;
      case 'D':
        return PitchClass.D;
      case 'E':
        return PitchClass.E;
      case 'F':
        return PitchClass.F;
      case 'G':
        return PitchClass.G;
      case 'A':
        return PitchClass.A;
      case 'B':
        return PitchClass.B;
      default:
        throw Exception('Invalid step: $step');
    }
  }

  static int getStepFromDuration(
      NoteDuration duration, int divisionsPerQuarterNote,
      [bool dotted = false]) {
    assert(divisionsPerQuarterNote <= 4);
    switch (duration) {
      case NoteDuration.whole:
        return divisionsPerQuarterNote * 4;
      case NoteDuration.half:
        return divisionsPerQuarterNote * 2;
      case NoteDuration.quarter:
        return divisionsPerQuarterNote * 1;
      case NoteDuration.eighth:
        return (divisionsPerQuarterNote * 0.5).toInt();
      case NoteDuration.sixteenth:
        return (divisionsPerQuarterNote * 0.25).toInt();
      default:
        throw Exception('Invalid duration: $duration');
    }
  }
}
