import 'package:flutter_test/flutter_test.dart';

import 'package:musiqwik_font/musiqwik_font.dart';

void main() {
  testWidgets('MyWidget has a title and message', (tester) async {
    await tester.pumpWidget(const GlyphGrid());
  });
}
