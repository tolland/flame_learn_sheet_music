import 'pitch.dart';

enum NoteValueLength {
  whole,
  half,
  quarter,
  eighth,
  sixteenth,
}

class NoteValue {
  final Pitch note;
  final NoteValueLength value;

  NoteValue({
    required this.note,
    required this.value,
  });
}
