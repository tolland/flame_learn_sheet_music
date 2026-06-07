import 'package:flame/components.dart';
import 'package:flame_bloc/flame_bloc.dart';
import 'package:flutter/services.dart';
import 'package:logging/logging.dart';

import '../../bloc/keyboard/piano_bloc.dart';
import '../learn_sheet_music.dart';
import '../managers/note_manager.dart';

/// keyboard listener for the game keyboardHandler
class LearnSheetMusicKeyboardListener extends Component
    with
        KeyboardHandler,
        HasGameReference<LearnSheetMusicGame>,
        FlameBlocReader<PianoBloc, PianoState> {
  static final _log = Logger('LearnSheetMusicKeyboardListener');


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
  bool onKeyEvent(KeyEvent event, Set<LogicalKeyboardKey> keysPressed) {
    if (event is! KeyDownEvent) {
      return true;
    }

    final isShiftPressed =
        keysPressed.contains(LogicalKeyboardKey.shiftLeft) ||
            keysPressed.contains(LogicalKeyboardKey.shiftRight) ||
            keysPressed.contains(LogicalKeyboardKey.shift);

    if (event.logicalKey == LogicalKeyboardKey.shiftLeft ||
        event.logicalKey == LogicalKeyboardKey.shiftRight ||
        event.logicalKey == LogicalKeyboardKey.shift) {
      _log.fine(() => "ignoring shifts");
      return true;
    }

    if (event.logicalKey == LogicalKeyboardKey.keyP ||
        event.logicalKey == LogicalKeyboardKey.space) {
      game.paused ? game.resumeEngine() : game.pauseEngine();
      return true;
    }

    final charkey = switch (event.logicalKey) {
      LogicalKeyboardKey.keyC => isShiftPressed ? "C#4" : "C4",
      LogicalKeyboardKey.keyD => isShiftPressed ? "D#4" : "D4",
      LogicalKeyboardKey.keyE => "E4",
      LogicalKeyboardKey.keyF => isShiftPressed ? "F#4" : "F4",
      LogicalKeyboardKey.keyG => isShiftPressed ? "G#4" : "G4",
      LogicalKeyboardKey.keyA => isShiftPressed ? "A#4" : "A4",
      LogicalKeyboardKey.keyB => "B4",
      _ => null,
    };

    if (charkey == null) {
      _log.finer(() => "ignoring other - ${event.logicalKey}");
      return true;
    }

    dispatchNoteInput(charkey);
    return true;
  }
}
