import 'package:note_sequence/src/model/models.dart';

import 'clef.dart';

class Note {
  final Pitch pitch;
  /// these are within measure values
  final int startStep;
  final int endStep;
  //final Voice voice;
  final Staff staff;
  final Measure measure;
  final NoteDuration type;

  Note({
    required this.pitch,
    required this.startStep,
    required this.endStep,
    required this.staff,
    required this.measure,
    required this.type,
    //required this.voice,
    //required this.clef,
  });

  int get duration => endStep - startStep;

  @override
  String toString() {
    var output = '';
    output += 'Note{${pitch.spn}($startStep-$endStep/${type.name})';
    return output;
  }
}
