import 'package:flame/components.dart';
import 'package:flutter/material.dart';

class PianoPlaceholder extends RectangleComponent with HasVisibility {
  PianoPlaceholder({
    super.size,
    super.position,
    super.anchor,
    super.priority,
    super.paint,
  }) {
    isVisible = false;
  }

}
