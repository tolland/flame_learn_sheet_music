


import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flame/game.dart';
import 'package:flame/parallax.dart';
import 'package:flutter/cupertino.dart';

import 'components/note.dart';

class LearnSheetMusicGame extends FlameGame
    with HasCollisionDetection, HasKeyboardHandlerComponents {

  @override
  Color backgroundColor() {
    return const Color.fromARGB(255, 217, 228, 233);
  }

  @override
  Future<void> onLoad() async {
    await images.loadAll([
      'star.png',
    ]);

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

    add(
      SpawnComponent(
        selfPositioning: true,
        factory: (index) {
          return NoteComponent(
            position: Vector2(
              size.x,
              size.y / 2,
            ),

          );
        },
        period: 2,
        //area: Rectangle.fromLTWH(0, 0, size.x, -Enemy.enemySize),
      ),
    );

    camera.viewfinder.anchor = Anchor.topLeft;
    initializeGame(true);
  }

  void reset() {

  }

  void initializeGame(bool loadHud) {
    // // Assume that size.x < 3200
    // final segmentsToLoad = (size.x / 640).ceil();
    // segmentsToLoad.clamp(0, segments.length);
    //
    // for (var i = 0; i <= segmentsToLoad; i++) {
    //   loadGameSegments(i, (640 * i).toDouble());
    // }
    //
    // _ember = EmberPlayer(
    //   position: Vector2(128, canvasSize.y - 128),
    // );
    // add(_ember);
    // if (loadHud) {
    //   add(Hud());
    // }

    //camera.viewport.add(Hud());
  }

}
