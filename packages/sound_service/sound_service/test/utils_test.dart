import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:sound_service/sound_service.dart';
import 'package:sound_service/src/piano_sound_samples/piano_99_leethring.dart';
import 'package:sound_service_util/main.dart';

void main() {
  group('Test utils methods', () {
    test('adds one to input values', () {
      expect(Utils.getSpn(0), "C-1");
      expect(Utils.getFrequency(0), 8.175798915643707);
      expect(Utils.getSpn(60), "C4");
      expect(Utils.getFrequency(60), 261.6255653005986);
      expect(Utils.getFrequency(127), 12543.853951415975);
    });

    test('test the files', () {
      Piano88Leethring.pianoNotes.forEach((key, value) {
        expect(File("assets/notes/$value.mp3").existsSync(), true);
      });
    });

    test('test getting vals', () {
      expect(Utils.getSp4O(0), 12);
      expect(Utils.getSp4O(1), 24);
      expect(Utils.getSp4O(2), 36);
      expect(Utils.getSp4O(3), 48);
      expect(Utils.getSp4O(4), 60);
      expect(Utils.getEp4O(0), 23);
      expect(Utils.getEp4O(1), 35);
      expect(Utils.getEp4O(2), 47);
      expect(Utils.getEp4O(3), 59);

    });
    test('test getting o4p', () {
      expect(Utils.getO4P(0), -1);
      expect(Utils.getO4P(1), -1);
      expect(Utils.getO4P(13), 0);
      expect(Utils.getO4P(65), 4);
      expect(Utils.getO4P(127), 9);
    });
    test('test white count', () {
      expect(Utils.getWhiteCount(59,61), 2);
      expect(Utils.getWhiteCount(0,0), 1);
      expect(Utils.getWhiteCount(21,22), 1);
      expect(Utils.getWhiteCount(21,28), 5);
      expect(Utils.getWhiteCount(21,108), 52);
    });
  });
}
