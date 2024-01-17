import 'package:flame/components.dart';
import 'package:flame_bloc/flame_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:logging/logging.dart';

import '../bloc/keyboard/piano_bloc.dart';
import '../learn_sheet_music.dart';
import '../managers/note_manager.dart';

class LearnSheetMusicKeyboardListener extends Component
    with
        KeyboardHandler,
        HasGameReference<LearnSheetMusicGame>,
        FlameBlocReader<PianoBloc, PianoState> {
  static final _log = Logger('LearnSheetMusicKeyboardListener');

  //
  LearnSheetMusicKeyboardListener() {
    _log.fine(() => "creating keyboard listener");
  }

  // final Function onKeyDown;
  // final Function onKeyUp;

  void dispatchNoteInput(String key) {
    //game.noteInput(Note.randomBar());
    _log.fine(() => "dispatching $key");
    bloc.add(PianoKeyPlayed(pitch: NoteManager.keys[key]!));
    bloc.add(PianoKeyReleased(pitch: NoteManager.keys[key]!));
    // if(key == tempNote.note) {
    //   //game.noteInput(tempNote);
    //   // _log.fine(() => "removing key $key for tempnote $tempNote");
    //
    //   // _log.fine(() => "attempting to play ${tempNote.sound}");
    //   FlameAudio.play(tempNote.sound, volume: 1.0);
    //   //removeFromParent();
    //
    // }
  }

  @override
  bool onKeyEvent(RawKeyEvent event, Set<LogicalKeyboardKey> keysPressed) {
    //_log.fine(() => "event is $event");
    if (event is RawKeyDownEvent) {
      var charkey;
      switch (event.logicalKey) {
        case LogicalKeyboardKey.shiftLeft:
        case LogicalKeyboardKey.shiftRight:
          _log.fine(() => "ignoring shifts");
        case LogicalKeyboardKey.shift:
        case LogicalKeyboardKey.keyP:
        case LogicalKeyboardKey.space:
          game.paused ? game.resumeEngine() : game.pauseEngine();
        case LogicalKeyboardKey.keyC:
          if (keysPressed.contains(LogicalKeyboardKey.shiftLeft) ||
              keysPressed.contains(LogicalKeyboardKey.shiftRight)) {
            charkey = "C#4";
          } else {
            charkey = "C4";
          }
        case LogicalKeyboardKey.keyD:
          if (keysPressed.contains(LogicalKeyboardKey.shiftLeft) ||
              keysPressed.contains(LogicalKeyboardKey.shiftRight)) {
            charkey = "D#4";
          } else {
            charkey = "D4";
          }
        case LogicalKeyboardKey.keyE:
          charkey = "E4";
        case LogicalKeyboardKey.keyF:
          if (keysPressed.contains(LogicalKeyboardKey.shiftLeft) ||
              keysPressed.contains(LogicalKeyboardKey.shiftRight)) {
            charkey = "F#4";
          } else {
            charkey = "F4";
          }
        case LogicalKeyboardKey.keyG:
          if (keysPressed.contains(LogicalKeyboardKey.shiftLeft) ||
              keysPressed.contains(LogicalKeyboardKey.shiftRight)) {
            charkey = "G#4";
          } else {
            charkey = "G4";
          }
        case LogicalKeyboardKey.keyA:
          if (keysPressed.contains(LogicalKeyboardKey.shiftLeft) ||
              keysPressed.contains(LogicalKeyboardKey.shiftRight)) {
            charkey = "A#4";
          } else {
            charkey = "A4";
          }
        case LogicalKeyboardKey.keyB:
          charkey = "B4";
        default:
          _log.finer(() => "ignoring other - ${event.logicalKey}");
      }
      if (charkey != null) dispatchNoteInput(charkey);
    }

    return true;
  }
}
