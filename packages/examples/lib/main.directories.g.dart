// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_import, prefer_relative_imports, directives_ordering

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AppGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:sound_service_examples/src/components/example_component_1.dart'
    as _i3;
import 'package:sound_service_examples/src/components/run_file_picjer.dart'
    as _i2;
import 'package:sound_service_examples/src/components/run_kitchen_sink.dart'
    as _i6;
import 'package:sound_service_examples/src/components/run_player2.dart' as _i5;
import 'package:sound_service_examples/src/components/sound_pool_keylistener_virtual_keyboard.dart'
    as _i4;
import 'package:widgetbook/widgetbook.dart' as _i1;

final directories = <_i1.WidgetbookNode>[
  _i1.WidgetbookFolder(
    name: 'widgets',
    children: [
      _i1.WidgetbookComponent(
        name: 'Column',
        useCases: [
          _i1.WidgetbookUseCase(
            name: 'filepicker_midi',
            builder: _i2.yellowContainerUseCase,
          ),
          _i1.WidgetbookUseCase(
            name: 'keylistener keyboard-using audioplayers controller',
            builder: _i3.greenContainerUseCase,
          ),
          _i1.WidgetbookUseCase(
            name: 'sound pool keylistener virtual keyboard',
            builder: _i4.redContainerUseCase,
          ),
          _i1.WidgetbookUseCase(
            name: 'test dragging keys',
            builder: _i5.greenContainerUseCase2,
          ),
          _i1.WidgetbookUseCase(
            name: 'test with waterfall',
            builder: _i6.redContainerUseCase,
          ),
        ],
      )
    ],
  )
];
