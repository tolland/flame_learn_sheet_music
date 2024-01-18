import 'package:note_sequence/note_sequence.dart';
import 'package:test/test.dart';

void main() {
  group('Creating scores and parts:', () {
    test('create a basic score', () {
      var score = Score(
        title: "My Score",
        description: "A score for testing",
        initialBeats: 4,
        initialBeatType: 4,
        initialDpq: 4,
      );

      expect(score.validate(), isTrue);
      expect(score.parts, isEmpty);
      expect(score.bars, isEmpty);
      expect(score.measures, isEmpty);
      expect(score.description, isNotEmpty);
      expect(score.title, isNotEmpty);
    });

    test('score with 2 parts, voice and piano', () {
      var score = Score(
        title: "My Score",
        description: "A score for testing",
        initialBeats: 4,
        initialBeatType: 4,
        initialDpq: 4,
      );

      var voicePart = score.addPart(
        name: "Voice",
        description: "A voice part",
      );

      Staff voiceTrebleStaff = voicePart.addStaff(
        clef: Clef.treble,
      );

      var pianoPart = score.addPart(
        name: "Piano",
        description: "A piano part",
      );

      Staff trebleStaff = pianoPart.addStaff(
        clef: Clef.treble,
      );
      Staff bassStaff = pianoPart.addStaff(
        clef: Clef.bass,
      );

      //expect(score.validate(), isTrue);
      expect(score.parts.length, 2);
      expect(score.parts[0].staves.length, 1);
      expect(score.parts[1].staves.length, 2);
      expect(pianoPart.name, "Piano");
      expect(voicePart.name, "Voice");
    });

    test('create a  score and add some stuff', () {
      var score = Score(
        title: "MyScore",
        description: "A score for testing",
        initialBeats: 4,
        initialBeatType: 4,
        initialDpq: 4,
      );

      var part1 = score.addPart(
        name: "Part#1-Piano",
        description: "A part for testing",
      );

      //part1.staves.clear();

      var trebleStaff = part1.addStaff(
        clef: Clef.treble,
      );

      var bassStaff = part1.addStaff(
        clef: Clef.bass,
      );

      var measure1 = score.addMeasure();

      score.currentPart = part1;
      score.currentStaff = trebleStaff;

      score.addNote(
        pitch: Util.fromSpn("C4"),
        duration: NoteDuration.quarter,
      );
      score.addNote(
        pitch: Util.fromSpn("D4"),
        duration: NoteDuration.quarter,
      );
      score.addNote(
        pitch: Util.fromSpn("E4"),
        duration: NoteDuration.quarter,
      );
      score.addNote(
        pitch: Util.fromSpn("F4"),
        duration: NoteDuration.quarter,
      );

      var measure2 = score.addMeasure();

      score.addNote(
        pitch: Util.fromSpn("C4"),
        duration: NoteDuration.quarter,
      );

      score.currentStaff = bassStaff;

      score.addNote(
        pitch: Util.fromSpn("C4"),
        duration: NoteDuration.quarter,
      );

      print(score);

      //expect(score.validate(), isTrue);

      expect(score.description, isNotNull);
      expect(score.parts[0], isNotNull);
      expect(score.parts.length, 1);
      expect(score.parts[0].staves.length, 2);
      //expect(score.parts[0].staves[0].notes, isNotEmpty);
      //print("score notes length is ${score.notes.length}");
      //print(score.parts[0].staves[0].notes.length);
      //print(score.parts[0].staves[1].notes.length);
      // expect(
      //     score.notes.length,
      //     score.parts[0].staves[0].notes.length +
      //         score.parts[0].staves[1].notes.length);
      //expect(score.parts[1].measures[0].staves.length, 2);
      expect(trebleStaff.clef, equals(Clef.treble));
      expect(bassStaff.clef, equals(Clef.bass));
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
