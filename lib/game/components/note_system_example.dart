import 'dart:async';

import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flame/input.dart';
import 'package:flame/palette.dart';
import 'package:flutter/material.dart';
import 'package:logging/logging.dart';

import '../models/note.dart';
import 'note_system.dart';


class NoteSystemExample extends FlameGame {
  static final _log = Logger('NoteSystemExample');

  static const String description = '''
      Example wrapper for the Note System component.'
      ''';

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
          _log.finest("feck off");
        },
      ),
    );
  }
}
