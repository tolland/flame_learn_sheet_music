import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flame/game.dart';
import 'package:flame/parallax.dart';
import 'package:flame_bloc/flame_bloc.dart';
import 'package:flame_learn_sheet_music/components/game_area.dart';
import 'package:flutter/material.dart';
import 'package:logging/logging.dart';

import 'package:flame_learn_sheet_music/bloc/keyboard/piano_bloc.dart';
import 'package:flame_learn_sheet_music/game.dart';
import 'bloc/game_stats/game_stats_bloc.dart';
import 'components/keyboard_listener.dart';
import 'components/note_component.dart';
import 'level_selection/game_level.dart';
import 'managers/audio_manager.dart';

class LearnSheetMusicGame extends FlameGame
    with HasCollisionDetection, HasKeyboardHandlerComponents {
  static final _log = Logger('LearnSheetMusicGame');

  final PianoBloc pianoBloc;
  final GameStatsBloc statsBloc;
  final GameLevel gameLevel;

  late Timer gameTimer;

  bool _isHKeyboardVisible = true;

  //late SpawnComponent spawnComponent

  LearnSheetMusicGame({
    required this.pianoBloc,
    required this.statsBloc,
    required this.gameLevel,
  }) : super() {


  }

  @override
  Color backgroundColor() {
    return const Color.fromARGB(255, 217, 228, 233);
  }

  @override
  Future<void> onLoad() async {
    _log.fine(() => "${hashCode} - in onLoad in - ${toString()}");

    _log.finer(() => "game timer is ${gameLevel.timeLimit}");
    gameTimer = Timer(gameLevel.timeLimit, autoStart: false);

    await images.loadAll([
      'star.png',
    ]);

    await add(FlameMultiBlocProvider(
      providers: [
        FlameBlocProvider<GameStatsBloc, GameStatsState>.value(
          value: statsBloc,
          children: [],
        ),
        FlameBlocProvider<PianoBloc, PianoState>.value(
          value: pianoBloc,
          children: [],
        ),
      ],
      children: [
        FlameBlocListener<GameStatsBloc, GameStatsState>(
          listenWhen: (previousState, newState) {
            return previousState.status != newState.status;
          },
          onNewState: (state) {
            switch (state.status) {
              case GameStatus.initial:
                _log.fine(() => "game status is initial");
                break;
              case GameStatus.starting:
                _log.fine(() => "game status is prestart");
                prepareStart();
                break;
              case GameStatus.running:
                _log.fine(() => "game status is started");
                break;
              case GameStatus.paused:
                _log.fine(() => "game status is paused");
                break;
              case GameStatus.respawn:
                _log.fine(() => "game status is respawn");
                break;
              case GameStatus.gameOver:
                _log.fine(() => "game status is game over");
                gameOver();
              case GameStatus.resetting:
                _log.fine(() => "resetting game");
                reset();
                break;
              default:
                break;
            }
          },
        ),
        FlameBlocListener<PianoBloc, PianoState>(
          listenWhen: (previousState, newState) {
           // _log.fine(() => "checking when condition");
            return previousState != newState;
          },
          onNewState: (state) {
           // _log.fine(() => "on new state in flame bloc listener for piano");
            if(state.shown==PianoShowState.showing) {
              overlays.add(GameView.virtualKeyboardOverlay);
            } else {
              overlays.remove(GameView.virtualKeyboardOverlay);
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
        // this is responding to new states from the piano bloc
        AudioManager(),
        // this is listening for keyboard events and sending piano events
        LearnSheetMusicKeyboardListener(),
        GameArea(
          size: size,
          //position: Vector2(0, 0),
        ),

      ],
    ));

    _log.finer(() => "adding piano bloc to game with audio manager "
        "- ${AudioManager.singleton().hashCode}");

    children.register<AudioManager>();


    final parallax = await loadParallaxComponent(
      [
        ParallaxImageData('stars_0.png'),
        ParallaxImageData('stars_1.png'),
        ParallaxImageData('stars_2.png'),
      ],
      baseVelocity: Vector2(5, 0),
      repeat: ImageRepeat.repeat,
      velocityMultiplierDelta: Vector2(3, 0),
    );
    add(parallax);

    camera.viewfinder.anchor = Anchor.topLeft;
    overlays.add(GameView.prestartMenu);

    super.onLoad();
  }

  void prepareStart() {
    // do stuff
    //_log.fine(() => "calling preparestart");
    overlays.add(GameView.virtualKeyboardOverlay);
    overlays.add(GameView.backButtonKeyOverlay);
    start();
  }

  void start() {
    //_log.fine(() => "calling start");
    gameTimer.start();
    //spawnComponent.timer.start();
    //notationArea.start();
    statsBloc.add(GameStarted());

    // add(ScrollingText('Scrolling Text - this is some scrolling text',
    //     speed: 100.0)
    //   ..position = Vector2(size.x, size.y / 2)); // Starting position
  }

  void gameOver() {
    //state = GameState.gameOver;

    pauseEngine();
    overlays.add(GameView.gameOverMenu);

    //game.overlays.add(GameScreen.winDialogKey);
  }

  @override
  void update(double dt) {
    gameTimer.update(dt);
    if (gameLevel.timeLimit > 0 && gameTimer.finished) {
      // Prefer the timer callback, but this is better in some cases
      _log.fine(() => "timer finished");
      statsBloc.add(TimerExpired());
    }
    super.update(dt);
  }

  final TextPaint textPaint = TextPaint(
    style: const TextStyle(color: Colors.white, fontSize: 20),
  );

  void reset() {
    _log.fine(() => "calling reset");
    for (final c in children) {
      _log.fine(() => "child is ${c}");
    }
    removeWhere((element) => element is NoteComponent);
    gameTimer.stop();
    gameTimer.reset();
    gameTimer.start();
    // notationArea.stop();
    // notationArea.reset();
    // notationArea.start();
    resumeEngine();
  }
}
