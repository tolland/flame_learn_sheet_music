import 'dart:ui';

import 'package:flame/collisions.dart';
import 'package:flame/components.dart';
import 'package:flame_bloc/flame_bloc.dart';
import 'package:flutter/material.dart';
import 'package:logging/logging.dart';

import '../bloc/game_stats/game_stats_bloc.dart';
import '../learn_sheet_music.dart';
import 'note_spawner.dart';

// mixin FlameBlocListenable<B extends BlocBase<S>, S> on Component {

class NotationArea extends RectangleComponent
    with
        HasGameReference<LearnSheetMusicGame>,
        FlameBlocListenable<GameStatsBloc, GameStatsState> {
  static final _log = Logger('NotationArea');

  NotationArea({
    super.size,
    super.position,
    super.anchor,
    super.priority = 1,
  }) {
    paint=Paint()..color = Colors.green.shade50;

    _log.finer(() => "${hashCode} - creating NotationArea");
    //paint.color = Color(0x88ff0000);
  }



  late NoteSpawner noteSpawner;

  @override
  void onNewState(GameStatsState state) {
    switch(state.status) {

      case GameStatus.running:
        start();

      case GameStatus.resetting:
        stop();
        reset();
        start();

      case GameStatus.gameOver:
        stop();

      default:
        break;
    }
    // if (state.status == GameStatus.resetting ||
    //     state.status == GameStatus.initial) {
    //   _log.fine(() => "handling states on ${state.status} - ${hashCode}");
    //   //game.statsBloc.add(const PlayerRespawned());
    //   //parent?.add(game.player = PlayerComponent());
    // }
  }

  void start() {
    noteSpawner.start();
  }

  void stop() {
    noteSpawner.stop();
  }

  void reset() {
    noteSpawner.reset();
  }

  @override
  Future<void> onLoad() async {
    //await super.onLoad();
    _log.finer(() => 'absolutePosition of NotationArea is $absolutePosition');
    _log.finer(() => 'postition of NotationArea is $position');
    _log.finer(() => 'anchor of NotationArea is $anchor');
    _log.finer(() => 'size of NotationArea is $size');

    var workArea = RectangleComponent.fromRect(
      Rect.fromLTWH(
          size.x * .4, size.y * .1, (size.x / 100) * 20, (size.y / 100) * 80),
      paint: Paint()..color = Colors.pink.shade50,
      priority: 2,
    );

    workArea.debugMode = true;
    workArea.add(RectangleHitbox(
      // position: workArea.position,
      size: workArea.size,
    ));

    add(workArea);

    noteSpawner = NoteSpawner(
      notes: game.gameLevel.notes,
      autoStart: false,
      notationArea: this,
      position: Vector2(
        size.x,
        0,
      ),
      size: Vector2(
        200,
        size.y,
      ),
      priority: 3,
    );
    add(noteSpawner);
  }

  @override
  bool get debugMode => true;
}
