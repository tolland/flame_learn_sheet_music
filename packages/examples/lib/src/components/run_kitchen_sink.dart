import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

import '../widgets/kitchen_sink_widget.dart';

@widgetbook.UseCase(
  name: 'test with waterfall',
  type: Column,
)
Widget redContainerUseCase(BuildContext context) {
  //print("int the build method of greenContainerUseCase");
  return PianoPlusWaterfall();
}
