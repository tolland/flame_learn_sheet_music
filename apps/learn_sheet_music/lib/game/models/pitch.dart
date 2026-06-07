import 'package:equatable/equatable.dart';

class Pitch extends Equatable {

  var name;
  var note;
  var glyph;
  var sound;

  Pitch({
    required this.name,
    required this.note,
    required this.glyph,
    required this.sound,
  });


  @override
  String toString() {
    return 'Pitch{$name}';
  }

  @override
  List<Object?> get props => [name, note, glyph, sound];
}
