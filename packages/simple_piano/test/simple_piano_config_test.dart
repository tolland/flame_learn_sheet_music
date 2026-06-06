import 'package:flutter_test/flutter_test.dart';
import 'package:simple_piano/src/simple_piano/simple_piano_config.dart';

void main() {
  //late SimplePianoConfig simplePianoConfig;

  setUp(() {});
  group('Test utils methods', () {

    test('test simple piano config', () {
      SimplePianoConfig simplePianoConfig = SimplePianoConfig.fromStartEndPitch(
        0,
        127,
      );
      expect(simplePianoConfig.startPitch, 0);
      expect(simplePianoConfig.endPitch, 127);
      expect(simplePianoConfig.noteCount, 128);
      expect(simplePianoConfig.octaves, 11);
      expect(simplePianoConfig.startOctave, -1);
      expect(simplePianoConfig.endOctave, 9);
      expect(simplePianoConfig.startSpn, "C-1");
      expect(simplePianoConfig.endSpn, "G9");
    });

    test('test simple piano config', () {
      SimplePianoConfig simplePianoConfig = SimplePianoConfig.fromStartEndPitch(
        59,
        61,
      );
      expect(simplePianoConfig.noteCount, 3);
      expect(simplePianoConfig.octaves, 2);
      expect(simplePianoConfig.startOctave, 3);
      expect(simplePianoConfig.endOctave, 4);
      expect(simplePianoConfig.startSpn, "B3");
      expect(simplePianoConfig.endSpn, "C#4");

      expect(simplePianoConfig.octaveConfig[0].index, 0);
      expect(simplePianoConfig.octaveConfig[0].octave, 3);
      expect(simplePianoConfig.octaveConfig[0].startIndex, 11);
      expect(simplePianoConfig.octaveConfig[0].endIndex, 11);
      expect(simplePianoConfig.octaveConfig[0].whiteCount, 1);

    });

    test('test simple piano config', () {
      SimplePianoConfig simplePianoConfig = SimplePianoConfig.fromStartEndPitch(
        36,
        36+49-1,
      );
      expect(simplePianoConfig.noteCount, 49);
      expect(simplePianoConfig.octaves, 5);
      expect(simplePianoConfig.startOctave, 2);
      expect(simplePianoConfig.endOctave, 6);
      expect(simplePianoConfig.startSpn, "C2");
      expect(simplePianoConfig.endSpn, "C6");

      expect(simplePianoConfig.octaveConfig[0].index, 0);
      expect(simplePianoConfig.octaveConfig[0].octave, 2);
      expect(simplePianoConfig.octaveConfig[0].startIndex, 0);
      expect(simplePianoConfig.octaveConfig[0].endIndex, 11);
      expect(simplePianoConfig.octaveConfig[0].whiteCount, 7);
      expect(simplePianoConfig.octaveConfig[0].blackCount, 5);

      expect(simplePianoConfig.octaveConfig[2].index, 2);
      expect(simplePianoConfig.octaveConfig[2].octave, 4);
      expect(simplePianoConfig.octaveConfig[2].startIndex, 0);
      expect(simplePianoConfig.octaveConfig[2].endIndex, 11);
      expect(simplePianoConfig.octaveConfig[2].whiteCount, 7);
      expect(simplePianoConfig.octaveConfig[2].blackCount, 5);

      expect(simplePianoConfig.octaveConfig[4].index, 4);
      expect(simplePianoConfig.octaveConfig[4].octave, 6);
      expect(simplePianoConfig.octaveConfig[4].startIndex, 0);
      expect(simplePianoConfig.octaveConfig[4].endIndex, 0);
      expect(simplePianoConfig.octaveConfig[4].whiteCount, 1);
      expect(simplePianoConfig.octaveConfig[4].blackCount, 0);

    });

    // test('test getting vals', () {
    //   expect(Utils.getStartPitchForOctave(0), 12);
    // });
  });
}
