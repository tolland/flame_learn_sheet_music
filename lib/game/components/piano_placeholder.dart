import 'package:flame/components.dart';

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
