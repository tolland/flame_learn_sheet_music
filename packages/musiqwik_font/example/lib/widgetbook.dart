import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

import 'examples/examples.dart';

void main() {
  runApp(const HotReload());
}

class HotReload extends StatelessWidget {
  const HotReload({super.key});

  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
      addons: [
        AlignmentAddon(
          initialAlignment: Alignment.center,
        ),
        // DeviceFrameAddon(
        //   devices: [
        //     Devices.ios.iPhoneSE,
        //     Devices.ios.iPhone13,
        //   ],
        //   initialDevice: Devices.ios.iPhone13,
        //
        // ),
      ],
      directories: [
        WidgetbookComponent(
          name: 'Container',
          useCases: [
            WidgetbookUseCase(
              name: 'Example 1',
              builder: (context) => const Example1(),
            ),
            WidgetbookUseCase(
              name: 'Example 2',
              builder: (context) => Example2(
                customFontSize: context.knobs.double.slider(
                  label: 'Font Size',
                  min: 10,
                  max: 150,
                  initialValue: 65,
                  divisions: 10,
                ),
              ),
            ),
            WidgetbookUseCase(
              name: 'Example 3',
              builder: (context) => Example3(
                customFontSize: context.knobs.double.slider(
                  label: 'Font Size',
                  min: 10,
                  max: 150,
                  initialValue: 46,
                  divisions: 10,
                ),
              ),
            ),
            WidgetbookUseCase(
              name: 'Example 4',
              builder: (context) => const Example4(),
            ),
            WidgetbookUseCase(
              name: 'Example 5',
              builder: (context) => const Example5(),
            ),
            WidgetbookUseCase(
              name: 'Example 6',
              builder: (context) => const Example6(),
            ),
            WidgetbookUseCase(
              name: 'Eigth Note - example 7',
              builder: (context) => Example7(),
            ),
          ],
        ),
      ],
    );
  }
}
