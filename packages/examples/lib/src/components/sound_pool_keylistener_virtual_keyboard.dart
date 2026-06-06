
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_piano/simple_piano.dart';
import 'package:simple_piano_keylistener/simple_piano_keylistener.dart';
import 'package:virtual_keyboard_status/virtual_keyboard_status.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

import '../widgets/soundpool_key_listener.dart';

@widgetbook.UseCase(
  name: 'sound pool keylistener virtual keyboard',
  type: Column,
)
Widget redContainerUseCase(BuildContext context) {
  print("int the build method of greenContainerUseCase");
  return MultiBlocProvider(
    providers: [
      // BlocProvider(
      //   create: (context) => SoundServiceBloc(
      //     audioController: AudioControllerSoundPool(),
      //     clock: Clock(
      //       initialTicksPerSecond: 60,
      //     ),
      //   ),
      // ),
      /// listen to keystrokes from flutter
      BlocProvider(
        create: (context) => KeyListenerBloc(),
      ),
      /// communicate with the simple piano widget
      BlocProvider(
        create: (context) => SimplePianoBloc(),
      ),
      BlocProvider(
        create: (context) => VirtualKeyboardStatusBloc(),
      ),
    ],
    child: KeyboardListenerWidget(
      child: SoundPoolKeyListener(),
    ),
  );
}
