import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flame_bloc/flame_bloc.dart';
import 'package:flame_learn_sheet_music/bloc/keyboard/piano_bloc.dart';
import 'package:flame_learn_sheet_music/components/piano_placeholder.dart';
import 'package:flutter/material.dart';
import 'package:logging/logging.dart';

import '../bloc/game_stats/game_stats_bloc.dart';
import '../learn_sheet_music.dart';
import 'notation_area.dart';

class GameArea extends RectangleComponent
    with
        HasGameReference<LearnSheetMusicGame>,
        FlameBlocListenable<GameStatsBloc, GameStatsState> {
  static final _log = Logger('GameArea');

  late final PositionComponent content;
  late final PianoPlaceholder pianoWidget;

  late NotationArea notationArea;

  GameArea({
    super.size,
    super.position,
    super.anchor,
    super.priority = 1,
  }) {
    paint=Paint()..color = Colors.yellow.shade50;
    add(
      notationArea = NotationArea(
        size: Vector2(900, 350),
        position: Vector2(size.x / 2 - 1000 / 2, size.y / 2 - 350 / 2),
      ),
    );
    add(
      pianoWidget = PianoPlaceholder(
        size: Vector2(800, 50),
        position: Vector2(size.x / 2 - 1000 / 2, size.y / 2 - 350 / 2),
        priority: 200,
        paint: Paint()..color = Colors.blue.shade50,
      ),
    );
  }


  @override
  Future<void> onLoad() async {
    //pianoWidget.isVisible = game.pianoBloc.state.shown==PianoShowState.showing;
    add(
      FlameBlocListener<PianoBloc, PianoState>(
        listenWhen: (previousState, newState) {
         // _log.fine(() => "checking when condition");
          return previousState != newState;
        },
        onNewState: (state) {
          //_log.fine(() => "on new state in flame bloc listener for piano");
          if(state.shown==PianoShowState.showing) {
            //pianoWidget.isVisible = true;
            notationArea.scale = Vector2(1, 0.8);
          } else {
            pianoWidget.isVisible = false;
            notationArea.scale = Vector2(1, 1);

          }
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

  }


  // @override
// void onNewState(GameStatsState state) {
//   if (state.status == GameStatus.running ||
//       state.status == GameStatus.initial) {
//     _log.fine(() => "handling states on ${state.status} - ${hashCode}");
//     //game.statsBloc.add(const PlayerRespawned());
//     //parent?.add(game.player = PlayerComponent());
//   }
// }
  @override
  bool get debugMode => true;
}
