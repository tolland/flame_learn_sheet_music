import 'package:note_sequence/model/clef.dart';
import 'package:note_sequence/model/duration.dart';
import 'package:note_sequence/model/measure.dart';
import 'package:note_sequence/model/note.dart';
import 'package:note_sequence/model/part.dart';
import 'package:note_sequence/model/pitch_class.dart';
import 'package:note_sequence/model/score.dart';
import 'package:note_sequence/model/staff.dart';
import 'package:note_sequence/utils/util.dart';
import 'package:test/test.dart';

void main() {
  group('Creating scores and parts:', () {
    test('create a basic score', () {
      var score = Score(
        title: "My Score",
        description: "A score for testing",
      );

      expect(score.parts.length, 1);
      expect(score.parts[0].staves.length, 1);
    });

    test('score with 2 parts, voice and piano', () {
      var score = Score(
        title: "My Score",
        description: "A score for testing",
      );

      score.parts.clear();
      var voicePart = score.addPart(Part.voice());
      var pianoPart = score.addPart(Part.piano());

      expect(score.parts.length, 2);
      expect(score.parts[0].staves.length, 1);
      expect(score.parts[1].staves.length, 2);
      expect(pianoPart.name, "Piano");
      expect(voicePart.name, "Voice");
    });

    test('create a  score and add some stuff', () {
      var score = Score(
        title: "My Score",
        description: "A score for testing",
      );

      var part1 = score.addPart(Part(
        name: "Part 1 - Piano",
        description: "A part for testing",
      ));

      part1.staves.clear();

      var staff1 = part1.addStaff(Staff(
        clef: Clef.treble,
      ));

      var staff2 = part1.addStaff(Staff(
        clef: Clef.bass,
      ));

      var measure1 = part1.addMeasure(Measure());

      measure1.addNote(
        pitch: Util.fromSpn("C4"),
        duration: NoteDuration.quarter,
        clef: Clef.treble,
      );
      measure1.addNote(
        pitch: Util.fromSpn("D4"),
        duration: NoteDuration.quarter,
      );
      measure1.addNote(
        pitch: Util.fromSpn("E4"),
        duration: NoteDuration.quarter,
      );
      measure1.addNote(
        pitch: Util.fromSpn("F4"),
        duration: NoteDuration.quarter,
      );

      print(score);

      expect(score.description, isNotNull);
      expect(score.parts[0], isNotNull);
      expect(score.parts[1], isNotNull);
      expect(score.parts[1].measures, isNotNull);
      expect(score.parts[1].measures[0], isNotNull);
      expect(score.parts[1].measures[0].staves, isNotNull);
      expect(score.parts[1].measures[0].staves.length, 2);
      expect(staff1.clef, equals(Clef.treble));
      expect(staff2.clef, equals(Clef.bass));
    });

    // test('create a part', () {
    //   expect(Util.createPart(), isNotNull);
    // });
  });

  group('Util static methods for pitch creation', () {
    test('parse SPN style strings', () {
      expect(Util.fromSpn("C4"), isNotNull);
    });

    test('parse SPN style strings C4', () {
      final pitch = Util.fromSpn("C4");

      expect(pitch.pitchClass, equals(PitchClass.C));
      expect(pitch.octave, equals(4));
      expect(pitch.spn, equals("C4"));
      expect(pitch.midiNumber, equals(60));
      expect(pitch.frequency.toStringAsFixed(2), equals("261.63"));
    });

    test('parse SPN style strings Cb4', () {
      final pitch = Util.fromSpn("Cb4");

      expect(pitch.pitchClass, equals(PitchClass.C));
      expect(pitch.octave, equals(4));
      expect(pitch.spn, equals("Cb4"));
      expect(pitch.midiNumber, equals(59));
    });

    test('parse SPN style strings A♭7', () {
      final pitch = Util.fromSpn("A♭7");

      expect(pitch.pitchClass, equals(PitchClass.A));
      expect(pitch.octave, equals(7));
      expect(pitch.alter, equals(-1.0));
      expect(pitch.spn, equals("Ab7"));
      expect(pitch.midiNumber, equals(104));
    });

    test('parse SPN style strings e4', () {
      final pitch = Util.fromSpn("e4");

      expect(pitch.pitchClass, equals(PitchClass.E));
      expect(pitch.octave, equals(4));
      expect(pitch.alter, equals(0.0));
      expect(pitch.spn, equals("E4"));
      expect(pitch.midiNumber, equals(64));
    });

    test('parse SPN style strings G9', () {
      final pitch = Util.fromSpn("G9");

      expect(pitch.pitchClass, equals(PitchClass.G));
      expect(pitch.octave, equals(9));
      expect(pitch.alter, equals(0.0));
      expect(pitch.spn, equals("G9"));
      expect(pitch.midiNumber, equals(127));
      expect(pitch.frequency.toStringAsFixed(2), equals("12543.85"));
    });
  });
}
