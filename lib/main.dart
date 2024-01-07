import 'package:flame/game.dart';
import 'package:flutter/material.dart';

import 'learn_sheet_music.dart';
import 'overlays/game_over.dart';
import 'overlays/main_menu.dart';

void main() {
  runApp(
    GameWidget<LearnSheetMusicGame>.controlled(
      gameFactory: LearnSheetMusicGame.new,
      // overlayBuilderMap: {
      //   'MainMenu': (_, game) => MainMenu(game: game),
      //   'GameOver': (_, game) => GameOver(game: game),
      // },
      // initialActiveOverlays: const ['MainMenu'],
    ),
  );
}
