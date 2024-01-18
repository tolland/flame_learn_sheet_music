import 'package:flutter/material.dart';

import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(
  name: 'with green color',
  type: Column,
)
Widget greenContainerUseCase(BuildContext context) {
  return Column(
    children: [
      Container(
        color: Colors.green,
        child: const SizedBox.square(
          dimension: 100,
        ),
      ),
    ],
  );
}
