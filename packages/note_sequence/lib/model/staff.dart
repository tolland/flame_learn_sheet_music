import 'clef.dart';
import 'note.dart';

class Staff {
  int? number;
  final Clef clef;
  List<Note> notes = [];

  static var _instances = 0;

  Staff({
    int? number,
    this.clef=Clef.treble,
  }) {
    if(number==null) this.number = _instances;
    _instances++;
  }

  Staff copyWith({
    int? number,
    Clef? clef,
    List<Note>? notes,
  }) {
    return Staff(
      number: number ?? this.number,
      clef: clef ?? this.clef,
    )..notes = notes ?? this.notes;
  }

  @override
  String toString() {
    return '''
    Staff{number: $number, clef: $clef} $hashCode
    staff notes:
      $notes
    ''';
  }
}
