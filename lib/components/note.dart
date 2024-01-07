import 'dart:ui';

import 'package:flame/collisions.dart';
import 'package:flame/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import '../learn_sheet_music.dart';
import '../managers/note_manager.dart';
import '../models/note.dart';
import 'package:flame_audio/flame_audio.dart';

class NoteComponent extends PositionComponent
    with KeyboardHandler, HasGameReference<LearnSheetMusicGame> {

  final Note tempNote;

  NoteComponent({
    super.position,
  }) : tempNote= NoteManager.randomNote(), super(size: Vector2(100, 100));


  @override
  Future<void> onLoad() async {
    await super.onLoad();

    // animation = await game.loadSpriteAnimation(
    //   'bullet.png',
    //   SpriteAnimationData.sequenced(
    //     amount: 4,
    //     stepTime: .2,
    //     textureSize: Vector2(8, 16),
    //   ),
    // );

    // final starImage = game.images.fromCache('star.png');
    // sprite = Sprite(starImage);
    // position = Vector2(game.size.x, game.size.y/2);

    var builder = ParagraphBuilder(
      ParagraphStyle(
        fontStyle: FontStyle.normal,
      ),
    );

    // final textStyle = GoogleFonts.mus(
    //   fontSize: 35,
    //   color: Colors.pink.shade200,
    // );

    final textStyle = const TextStyle(
      debugLabel: 'ClefQuestBarFont',
      fontFamily: 'MusiQwik',
      fontSize: 166.0,
      color: Colors.black,
      fontWeight: FontWeight.normal,
      decoration: TextDecoration.none,
    );

    final defaultRenderer = TextPaint(style: textStyle);

    add(
      TextComponent(
        text: tempNote.glyph,
        position: Vector2(0, -20),
        anchor: Anchor.center,
        textRenderer: defaultRenderer,
      ),
    );

    add(
      RectangleHitbox(
        collisionType: CollisionType.passive,
      ),
    );
  }

  void dispatchNoteInput(String key) {
    //game.noteInput(Note.randomBar());
    print("dispatching $key");
    if(key == tempNote.note) {
      //game.noteInput(tempNote);
      print("removing key $key for tempnote $tempNote");

      print("attempting to play ${tempNote.sound}");
      FlameAudio.play(tempNote.sound, volume: 1.0);
      removeFromParent();

    }
  }

  @override
  bool onKeyEvent(RawKeyEvent event, Set<LogicalKeyboardKey> keysPressed) {

    // print("event is $event");
    if (event is RawKeyDownEvent) {
      var charkey;
      switch (event.logicalKey) {
        case LogicalKeyboardKey.keyA:
          charkey = "A";
        case LogicalKeyboardKey.keyB:
          charkey = "B";
        case LogicalKeyboardKey.keyC:
          charkey = "C";
        case LogicalKeyboardKey.keyD:
          charkey = "D";
        case LogicalKeyboardKey.keyE:
          charkey = "E";
        case LogicalKeyboardKey.keyF:
          charkey = "F";
        case LogicalKeyboardKey.keyG:
          charkey = "G";
        default:
          break;
      }
      if (charkey != null) dispatchNoteInput(charkey);
    }


    //   if (event.logicalKey == LogicalKeyboardKey.keyA) {
    //     print("A");
    //   }
    //   if (event.logicalKey == LogicalKeyboardKey.keyS) {
    //     print("S");
    //   }
    //   if (event.logicalKey == LogicalKeyboardKey.keyD) {
    //     print("D");
    //   }
    //   if (event.logicalKey == LogicalKeyboardKey.keyF) {
    //     print("F");
    //   }
    //   if (event.logicalKey == LogicalKeyboardKey.keyG) {
    //     print("G");
    //   }
    //   if (event.logicalKey == LogicalKeyboardKey.keyH) {
    //     print("H");
    //   }
    //   if (event.logicalKey == LogicalKeyboardKey.keyJ) {
    //     print("J");
    //   }
    //   if (event.logicalKey == LogicalKeyboardKey.keyK) {
    //     print("K");
    //   }
    //   if (event.logicalKey == LogicalKeyboardKey.keyL) {
    //     print("L");
    //   }
    //   if (event.logicalKey == LogicalKeyboardKey.semicolon) {
    //     print(";");
    //   }
    // }

    return true;
  }

  @override
  void update(double dt) {
    super.update(dt);

    position.x += dt * -50;

    if (position.x < 0) {
      // print("removing");
      removeFromParent();
    }
  }

  @override
  bool get debugMode => false;
}
