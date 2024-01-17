import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:logging/logging.dart';
import 'package:nes_ui/nes_ui.dart';

import 'bloc/game_stats/game_stats_bloc.dart';
import 'bloc/game_stats/view/game_stat.dart';
import 'bloc/keyboard/piano_bloc.dart';
import 'learn_sheet_music.dart';
import 'level_selection/game_level.dart';
import 'overlays/game_controls.dart';
import 'overlays/overlays.dart';

class GameScreen extends StatelessWidget {
  static final _log = Logger('GameScreen');

  const GameScreen({
    required this.level,
    super.key,
  });

  final GameLevel level;

  @override
  Widget build(BuildContext context) {
    _log.finer(() => "${hashCode} - calling build in game screen");
    return Scaffold(
      body: MultiBlocProvider(
        providers: [
          BlocProvider<PianoBloc>(create: (_) => PianoBloc()),
          BlocProvider<GameStatsBloc>(create: (_) => GameStatsBloc(gameLevel: level)),
        ],
        child: Column(
          children: [
            GameStat(),
            Expanded(
              child: Stack(
                children: [
                  Positioned.fill(child: GameView(gameLevel: level)),
                  // Positioned(
                  //     top: 50,
                  //     right: 10,
                  //     child: Placeholder(
                  //       fallbackHeight: 100,
                  //       fallbackWidth: 100,
                  //     )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// The main.dart game view. this is really just here to allow
/// the game to be wrapped in a [MultiBlocProvider].
class GameView extends StatelessWidget {
  static final _log = Logger('GameView');

  const GameView({
    required this.gameLevel,
    super.key,
  });

  final GameLevel gameLevel;

  static const String backButtonKeyOverlay = 'back_buttton';
  static const String virtualKeyboardOverlay = 'virtual_keyboard';
  static const String prestartMenu = 'prestart_menu';
  static const String gameOverMenu = 'game_over_menu';

  @override
  Widget build(BuildContext context) {
    _log.finer(() => "${hashCode} - calling build in game view");
    return GameWidget.controlled(
      gameFactory: () => LearnSheetMusicGame(
        pianoBloc: context.read<PianoBloc>(),
        statsBloc: context.read<GameStatsBloc>(),
        gameLevel: gameLevel,
      ),
      overlayBuilderMap: {
        //  'MainMenu': (_, game) => MainMenu(),
//      'GameOver': (_, game) => GameOver(game: game),
        //'GameControls': (_, game) => GameControls(),
        backButtonKeyOverlay: (_, LearnSheetMusicGame game) => GameControls(game),
        virtualKeyboardOverlay: (_, game) => VirtualKeyboard(),
        prestartMenu: (_, LearnSheetMusicGame game) => PrestartMenu(game),
        gameOverMenu: (_, LearnSheetMusicGame game) => GameOverMenu(game: game),
      },
    );
  }
}
