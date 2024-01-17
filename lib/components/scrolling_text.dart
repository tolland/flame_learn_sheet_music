import 'package:flame/components.dart';
import 'package:flutter/material.dart';

import '../learn_sheet_music.dart';

class ScrollingText extends TextComponent with HasGameReference<LearnSheetMusicGame> {
  double speed; // Speed of scrolling

  ScrollingText(String text, {required this.speed}) : super(text: text);

  @override
  void update(double dt) {
    super.update(dt);
    // Update the position of the text
    x -= speed * dt; // Move left across the screen

    // Reset position if text goes off-screen
    if (x + width < 0) {
      x = game.size.x; // Assuming gameSize is the size of your game screen
    }
  }
}
