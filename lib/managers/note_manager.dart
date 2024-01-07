

import 'dart:math';

import '../models/note.dart';


class NoteManager {


  static const spacer = '==';

  static int count = 0;


  static Note randomNote() {

    if(count>=NoteManager.keys.length) count = 0;

    return NoteManager.keys[NoteManager.keys.keys.elementAt(count++)]!;
    return NoteManager.keys["D4"]!;

  }

// static String randomBar() {
//   //return glyphs[glyphs.keys.elementAt(Random().nextInt(glyphs.length))]!;
//   return randomClef() + spacer + randomNote() + randomNote() + randomNote() + randomNote() + spacer;
// }

  static String randomClef() {
    return clefs[clefs.keys.elementAt(Random().nextInt(clefs.length))]!;
  }

  static const Map<String, String> clefs = {
    'treble': '&',
    'bass': '\u00af',
  };

  static final path = '/4409__pinkyfinger__piano-notes-1-octave';

  static final Map<String, Note> keys = {
    "C4": Note(
      note: "C",
      name: "C4",
      glyph: "=R=",
      //sound: "$path/68440__pinkyfinger__piano-c.wav",
      sound: "$path/334538__teddy_frost__c4.wav",
    ),
    "D4": Note(
      note: "D",
      name: "D4",
      glyph: "=S=",
      sound: "$path/334536__teddy_frost__piano-normal-d4.wav",
    ),
    "E4": Note(
      note: "E",
      name: "E4",
      glyph: "=T=",
      sound: "$path/334542__teddy_frost__e4.wav",
    ),
    "F4": Note(
      note: "F",
      name: "F4",
      glyph: "=U=",
      sound: "$path/334541__teddy_frost__f4.wav",
    ),
    "G4": Note(
      note: "G",
      name: "G4",
      glyph: "=V=",
      sound: "$path/334540__teddy_frost__g4.wav",
    ),
    "A4": Note(
      note: "A",
      name: "A4",
      glyph: "=W=",
      sound: "$path/334534__teddy_frost__piano-a4-sound.wav",
    ),
    "B4": Note(
      note: "B",
      name: "B4",
      glyph: "=X=",
      sound: "$path/334539__teddy_frost__b4.wav",
    ),
  };

}
