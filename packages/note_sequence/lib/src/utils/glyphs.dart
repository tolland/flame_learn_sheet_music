

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


class Glyphs {
static final Map<String, Pitch> keys = {
  // "F3": Note(
  //   note: "F",
  //   name: "F3",
  //   glyph: "=@=",
  //   sound: "83133__meg__manthey-f3.wav",
  // ),
  // "G3": Note(
  //   note: "G",
  //   name: "G3",
  //   glyph: "=A=",
  //   sound: "83133__meg__manthey-f3.wav",
  // ),
  "trebleClef": Pitch(
    note: "",
    name: "trebleClef",
    glyph: "==&",
    sound: "83117__meg__manthey-a3.wav",
  ),
  "bassClef": Pitch(
    note: "",
    name: "bassClef",
    glyph: "==\u00af=",
    sound: "83117__meg__manthey-a3.wav",
  ),
  "fourFourTime": Pitch(
    note: "",
    name: "fourFourTime",
    glyph: "4==",
    sound: "83117__meg__manthey-a3.wav",
  ),
  "keyDMajor": Pitch(
    note: "",
    name: "keyDMajor",
    glyph: "\u00a2",
    sound: "83117__meg__manthey-a3.wav",
  ),
  "A3": Pitch(
    note: "A",
    name: "A3",
    glyph: "==P==",
    sound: "83117__meg__manthey-a3.wav",
  ),
  "B3": Pitch(
    note: "B",
    name: "B3",
    glyph: "==Q==",
    sound: "448568__tedagame__b3.ogg",
  ),
  "C4": Pitch(
    note: "C",
    name: "C4",
    glyph: "==R==",
    //sound: "68440__pinkyfinger__piano-c.wav",
    sound: "334538__teddy_frost__c4.wav",
  ),
  "C#4": Pitch(
    note: "C#",
    name: "C#4",
    glyph: "==\u00d2R=",
    //sound: "68440__pinkyfinger__piano-c.wav",
    sound: "334538__teddy_frost__c4.wav",
  ),
  "D4": Pitch(
    note: "D",
    name: "D4",
    glyph: "==S==",
    sound: "334536__teddy_frost__piano-normal-d4.wav",
  ),
  "D#4": Pitch(
    note: "D",
    name: "D#4",
    glyph: "==\u00d3S==",
    sound: "334536__teddy_frost__piano-normal-d4.wav",
  ),
  "E4": Pitch(
    note: "E",
    name: "E4",
    glyph: "==T==",
    sound: "334542__teddy_frost__e4.wav",
  ),
  "F4": Pitch(
    note: "F",
    name: "F4",
    glyph: "==U==",
    sound: "334541__teddy_frost__f4.wav",
  ),
  "F#4": Pitch(
    note: "F",
    name: "F#4",
    glyph: "=\u00d5U=",
    sound: "334541__teddy_frost__f4.wav",
  ),
  "G4": Pitch(
    note: "G",
    name: "G4",
    glyph: "==V==",
    sound: "334540__teddy_frost__g4.wav",
  ),
  "G#4": Pitch(
    note: "G",
    name: "G4",
    glyph: "=\u00d6V=",
    sound: "334540__teddy_frost__g4.wav",
  ),
  "A4": Pitch(
    note: "A",
    name: "A4",
    glyph: "=W=",
    sound: "334534__teddy_frost__piano-a4-sound.wav",
  ),
  "A#4": Pitch(
    note: "A",
    name: "A#4",
    glyph: "=\u00d7W=",
    sound: "334534__teddy_frost__piano-a4-sound.wav",
  ),
  "B4": Pitch(
    note: "B",
    name: "B4",
    glyph: "==X=",
    sound: "334539__teddy_frost__b4.wav",
  ),
  "C5": Pitch(
    note: "B",
    name: "B4",
    glyph: "==Y=",
    sound: "334539__teddy_frost__b4.wav",
  ),
};
}
