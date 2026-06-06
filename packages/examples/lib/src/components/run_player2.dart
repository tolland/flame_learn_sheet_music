import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

import '../widgets/example_widget_2.dart';

@widgetbook.UseCase(
  name: 'test dragging keys',
  type: Column,
)
Widget greenContainerUseCase2(BuildContext context) {
  return DraggingKeysTest();
}
