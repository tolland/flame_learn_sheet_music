import 'dart:async';
import 'dart:math';

import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flame_learn_sheet_music/components/notation_area.dart';
import 'package:logging/logging.dart';

import '../learn_sheet_music.dart';
import '../models/note.dart';
import 'note_component.dart';

class NoteSpawner extends PositionComponent
    with HasGameReference<LearnSheetMusicGame> {
  static final _log = Logger('NoteSpawner');

  final List<Note> notes;

  final bool autoStart;

  /// track the parent component - @TODO better way to do this?
  final NotationArea notationArea;

  NoteSpawner({
    super.children,
    super.priority = 3,
    super.key,
    super.size,
    super.position,
    required this.notes,
    this.autoStart = true,
    required this.notationArea,
  });

  Stream<NoteComponent> sendMessagesWithIntervals(List<Note> notes) async* {
    var tmpnotes = [...notes];
    tmpnotes.shuffle(Random(123));
    for (var note in tmpnotes) {
      await Future.delayed(Duration(seconds: 3));
      _log.finer(() => 'absolutePosition of spawner is $absolutePosition');
      _log.finer(() => 'postition of spawner is $position');
      _log.finer(() => 'anchor of spawner is $anchor');
      _log.finer(() => 'size of spawner is $size');
      yield NoteComponent(
        pitch: note.pitch,
        noteValue: note.value,
        note: note,
        position: Vector2(
          notationArea.size.x,
          notationArea.size.y / 2 - 200 / 2,
        ),
      );
    }
  }

  void start() {
    sendMessagesWithIntervals(notes).listen((note) {
      _log.finer(() =>
          '${note} - value is ${note.noteValue} - pitch is ${note.pitch.glyph}');
      _log.finer(() => 'note has priority ${note.priority}');
      add(note);
    });
  }

  @override
  void onLoad() {
    if (autoStart) {
      start();
    }
  }

  void stop() {}

  void reset() {}

  @override
  void update(double dt) {
    super.update(dt);



    if (absolutePosition.x > 0) {
      _log.fine(() => "moving the note spawner");
      position.x += dt * -150;
      //removeFromParent();
    }
  }

// spawnComponent = SpawnComponent(
// autoStart: false,
// selfPositioning: true,
// factory: (index) {
// return NoteComponent(
// pitch: NoteManager.randomNote(),
// noteValue: NoteValueLength.quarter,
// position: Vector2(
// size.x,
// size.y / 2,
// ),
// );
// },
// period: 1,
// );
//
// add(spawnComponent);
}

class NoteSpawnerExample extends FlameGame
{

}
