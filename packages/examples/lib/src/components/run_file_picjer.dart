import 'package:flutter/material.dart';

import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

import '../widgets/filepicjer_midi.dart';
import '../widgets/kitchen_sink_widget.dart';

@widgetbook.UseCase(
  name: 'filepicker_midi',
  type: Column,
)
Widget yellowContainerUseCase(BuildContext context) {
  //print("int the build method of greenContainerUseCase");
  return FilePickerMidi();
}
