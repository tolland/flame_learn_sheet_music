import 'dart:ui';

import 'package:flame/collisions.dart';
import 'package:flame/components.dart';
import 'package:flame_bloc/flame_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logging/logging.dart';

import '../bloc/game_stats/game_stats_bloc.dart';
import '../bloc/keyboard/piano_bloc.dart';
import '../learn_sheet_music.dart';
import '../managers/note_manager.dart';
import '../models/note.dart';
import '../models/note_value.dart';
import '../models/pitch.dart';
import 'package:flame_audio/flame_audio.dart';

class NoteComponent extends PositionComponent
    with
        CollisionCallbacks,
        KeyboardHandler,
        HasGameReference<LearnSheetMusicGame> {
  static final _log = Logger('NoteComponent');

  final Pitch pitch;
  final NoteValueLength noteValue;
  final Note note;

  bool isPlayable = false;

  NoteComponent({
    required this.pitch,
    required this.noteValue,
    required this.note,
    super.position,
    super.priority = 200,
  }) : super(size: Vector2(100, 100));

  // @override
  // void onNewState(GameStatsState state) {
  //   switch (state.status) {
  //     case GameStatus.running:
  //     case GameStatus.initial:
  //       _log.fine(() => "handling states on ${state.status} - ${hashCode}");
  //
  //     case GameStatus.resetting:
  //     case GameStatus.gameOver:
  //       removeFromParent();
  //     default:
  //       break;
  //   }
  // }

  late TextComponent textComponent;

  static const textStyle = TextStyle(
    debugLabel: 'ClefQuestBarFont',
    fontFamily: 'MusiQwik',
    fontSize: 166.0,
    color: Colors.black,
    fontWeight: FontWeight.normal,
    decoration: TextDecoration.none,
  );

  final defaultRenderer = TextPaint(
    style: textStyle.copyWith(color: Colors.grey.shade600),
  );
  final activeRenderer = TextPaint(
    style: textStyle.copyWith(color: Colors.grey.shade900),
  );
  final playedRenderer = TextPaint(
    style: textStyle.copyWith(color: Colors.green),
  );

  @override
  void onCollision(Set<Vector2> points, PositionComponent other) {
    if (other is RectangleComponent) {
      //print("hit RectangleComponent");
      if (!isPlayable) {
        textComponent.textRenderer = activeRenderer;
        isPlayable = true;
        game.statsBloc.add(NotePlayable(playableNote: note));
      }
    } else {
      _log.fine(() => "hit something else - $other");
    }
  }

  @override
  void onCollisionEnd(PositionComponent other) {
    if (other is RectangleComponent) {
      //print("ended collision with RectangleComponent");
      textComponent.textRenderer = defaultRenderer;

      //game.statsBloc.add(NotePlayableEnded(playableNote: note));
    } else {
      _log.fine(() => "ended collision with $other");
    }
  }

  @override
  Future<void> onLoad() async {
    await super.onLoad();
    //  _log.fine(() => "absolutePosition of note component is $absolutePosition");
    // _log.fine(() => "position of note component is $position");
    // _log.fine(() => "anchor of note component is $anchor");
    // _log.fine(() => "size of note component is $size");

    // var otherBlocSubscription = game.pianoBloc.stream.listen((state) {
    //   _log.fine(() => "seeing state change of piano bloc in note component");
    //   _log.fine(() => "new stat is $state");
    //   if (state.pitchesPlaying.contains(pitch) && isPlayable) {
    //
    //     _log.fine(() => "removing as played");
    //     removeFromParent();
    //     game.statsBloc.add(ScoreEventAdded(1));
    //   }
    // });

    add(
      FlameBlocListener<PianoBloc, PianoState>(
        listenWhen: (previousState, newState) {
          //_log.fine(() => "checking when condition in note block for listen of piano");
          return previousState != newState;
        },
        onNewState: (state) {
          _log.fine(
              () => "seeing state change of piano bloc in note component");
          if (state.pitchesPlaying.contains(pitch) && isPlayable) {
            _log.fine(() => "removing as played");
            removeFromParent();
            game.statsBloc.add(ScoreEventAdded(1));
          }
          _log.fine(() => "on new state in flame bloc listener for piano");
          // if(state.shown==PianoShowState.showing) {
          //   overlays.add(GameView.virtualKeyboardOverlay);
          // } else {
          //   overlays.remove(GameView.virtualKeyboardOverlay);
          // }
          // switch (state.paused) {
          //   case GameStatus.initial:
          //     _log.fine(() => "game status is initial");
          //     break;
          //   case GameStatus.starting:
          //     _log.fine(() => "game status is prestart");
          //     prepareStart();
          //     break;
          //   default:
          //     break;
          // }
        },
      ),
    );

    var builder = ParagraphBuilder(
      ParagraphStyle(
        fontStyle: FontStyle.normal,
      ),
    );

    textComponent = TextComponent(
      text: pitch.glyph,
      position: Vector2(0, -20),
      //anchor: Anchor.center,
      textRenderer: defaultRenderer,
    );

    add(textComponent);

    add(
      RectangleHitbox(
        //position: Vector2(0,0),
        size: textComponent.size,
        collisionType: CollisionType.passive,
      ),
    );
  }

  @override
  void update(double dt) {
    super.update(dt);

    //position.x += dt * -150;

    if (absolutePosition.x < 0) {
      _log.fine(() => "removing as component is off the screen");
      removeFromParent();
    }
  }

  @override
  void onRemove() {
    //_log.fine(() => "in onRemove in note component");
  }

  @override
  bool get debugMode => false;
}
