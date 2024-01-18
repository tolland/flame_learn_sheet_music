import 'dart:async';
import 'dart:math';
import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flame/input.dart';
import 'package:flame/palette.dart';
import 'package:flame_learn_sheet_music/components/notation_area.dart';
import 'package:flutter/material.dart';
import 'package:logging/logging.dart';

import '../learn_sheet_music.dart';
import '../models/note.dart';
import '../models/pitch.dart';
import 'note_component.dart';

class NoteSystem extends RectangleComponent
    with HasGameReference<LearnSheetMusicGame> {
  static final _log = Logger('NoteSpawner');

  final List<Note> notes;

  final bool autoStart;

  late List<NoteComponent> noteComponents;

  double totalWidth = 0;

  NoteSystem({
    super.children,
    super.priority = 3,
    super.key,
    super.size,
    super.position,
    required this.notes,
    this.autoStart = true,
  }) : noteComponents = [] {
    paint = Paint()..color = Colors.green.shade50;

    var xpos = 0;

    for (Note note in notes) {
      var nc = NoteComponent(
        pitch: note.pitch,
        noteValue: note.value,
        note: note,
        position: Vector2(
          xpos.toDouble(),
          0,
        ),
      );
      xpos += 100;

      noteComponents.add(nc);
    }

    totalWidth = xpos.toDouble() + 200;
    size = Vector2(totalWidth, 400);
  }

  void start() {}

  @override
  void onLoad() {
    for (var note in noteComponents) {
      add(note);
    }
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
      //_log.fine(() => "moving the note spawner");
      position.x += dt * -150;
      //removeFromParent();
    }
  }

  @override
  bool get debugMode => true;
}

class NoteSystemExample extends FlameGame {
  final String pickNotes;

  NoteSystemExample({
    super.children,
    super.world,
    super.camera,
    required this.pickNotes,
  });

  @override
  Future<void> onLoad() async {
    await super.onLoad();

    List<Note> notes;

    switch (pickNotes) {
      case "first":
        notes = [
          Note.pitch('A3'),
          Note.pitch('B3'),
          Note.pitch('C4'),
          Note.pitch('D4'),
        ];

      case "second":
        notes = [
          Note.pitch('A3'),
          Note.pitch('F4'),
          Note.pitch('G4'),
        ];

      default:
        notes = [
          Note.pitch('A3'),
          Note.pitch('B3'),
          Note.pitch('C4'),
          Note.pitch('D4'),
          Note.pitch('E4'),
          Note.pitch('F4'),
          Note.pitch('G4'),
        ];

        break;
    }

    var noteSystem = NoteSystem(
      notes: notes,
      autoStart: true,
    );

    add(noteSystem);

    add(
      ButtonComponent(
        size: Vector2(100, 100),
        position: Vector2(100, 100),
        priority: 100,
        button: RectangleComponent(
          size: Vector2(100, 100),
          paint: Paint()
            ..color = Colors.orange
            ..style = PaintingStyle.fill,
        ),
        buttonDown: RectangleComponent(
          size: Vector2(100, 100),
          paint: BasicPalette.magenta.paint(),
        ),
        onPressed: () {
          print("fuck off");
        },
      ),
    );
  }
}
