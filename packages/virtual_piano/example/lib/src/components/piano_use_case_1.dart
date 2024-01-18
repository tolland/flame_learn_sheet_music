import 'package:flutter/material.dart';
import 'package:virtual_piano/virtual_piano.dart';

import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(
  name: 'Virtual Piano',
  type: VirtualPiano,
)
VirtualPiano customBackgroundCustomCard(BuildContext context) {
  return const VirtualPiano();
}
