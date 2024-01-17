import 'package:note_sequence/model/pitch.dart';
import 'package:note_sequence/model/voice.dart';

import 'clef.dart';

class Note {
  final Pitch pitch;
  /// these are within measure values
  final int startStep;
  final int endStep;
  //final Voice voice;
  // note doesn't know what clef its in until its added to staff
  // could be bass or treble
  //final Clef clef;

  Note({
    required this.pitch,
    required this.startStep,
    required this.endStep,
    //required this.voice,
    //required this.clef,
  });

  @override
  String toString() {
    return '''
    Note{startStep: $startStep, endStep: $endStep, pitch: $pitch}
    ''';
  }
}
