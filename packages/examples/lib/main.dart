import 'package:audio_soundpool/audioplayer_controller.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logging/logging.dart';
import 'package:sound_service/sound_service.dart';


import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;
import 'package:sound_service_util/main.dart';

import 'main.directories.g.dart';

void main() {
  Utils.setupLogging();

  WidgetsFlutterBinding.ensureInitialized();
  runApp(const WidgetbookApp());
}

@widgetbook.App()
class WidgetbookApp extends StatelessWidget {
  static final _log = Logger('WidgetbookApp');

  const WidgetbookApp({super.key});

  @override
  Widget build(BuildContext context) {
    _log.fine("in the build method for widgetbook app");
    return MultiBlocProvider(
      providers: [
        BlocProvider<SoundServiceBloc>(
          create: (childcontext) => SoundServiceBloc(
            audioController: AudioControllerSoundPool(),
            clock: Clock(
              initialTicksPerSecond: 60,
            ),
          ),
        ),
        BlocProvider<MetronomeCubit>(
          create: (childcontext) => MetronomeCubit(
              // clock: Clock(
              //   initialTicksPerSecond: 60,
              // ),
              ),
        ),
      ],
      child: MultiBlocListener(
        listeners: [
          SoundServiceCoordinator(),
          MetronomeCoordinator(),
        ],
        child: Widgetbook.material(
          // Use the generated directories variable
          directories: directories,
          addons: [],
          integrations: [
            // To make addons & knobs work with Widgetbook Cloud
            //WidgetbookCloudIntegration(),
          ],
        ),
      ),
    );
  }
}
