import 'package:ansi_codes/ansi_codes.dart';
import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flame_learn_sheet_music/game.dart';
import 'package:flame_learn_sheet_music/player_progress/player_progress.dart';
import 'package:flame_learn_sheet_music/router.dart';
import 'package:flame_learn_sheet_music/settings/settings.dart';
import 'package:flame_learn_sheet_music/style/palette.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logging/logging.dart';
import 'package:flutter/services.dart';
import 'package:nes_ui/nes_ui.dart';
import 'package:provider/provider.dart';

import 'dart:developer' as dev;

import 'app_lifecycle/app_lifecycle.dart';
import 'audio/audio_controller.dart';
import 'bloc/bloc_observers.dart';

import 'package:util/main.dart' as util;

void _setupLogging() {
  Logger.root.level = kDebugMode ? Level.FINE : Level.INFO;
  Logger.root.onRecord.listen((record) {
    // dev.log(
    //   '${record.time}: ${record.message}',
    //   time: record.time,
    //   level: record.level.value,
    //   name: record.loggerName,
    // );

    var openstring = '';
    var closestring = '';
    switch (record.level) {
      case Level.SEVERE:
        openstring = ansiCodes.red.open;
        closestring = ansiCodes.red.close;
        break;
      case Level.WARNING:
        openstring = ansiCodes.yellow.open;
        closestring = ansiCodes.yellow.close;
        break;
      case Level.INFO:
        openstring = ansiCodes.blue.open;
        closestring = ansiCodes.blue.close;
        break;
      default:
        openstring = ansiCodes.green.open;
        closestring = ansiCodes.green.close;
        break;
    }

    print(
        '${ansiCodes.grey.open}[${record.loggerName.substring(0, record.loggerName.length > 16 ? 16 : record.loggerName.length).padRight(16)}]${ansiCodes.grey.close} ${openstring}${record.level.name.padRight(7)}:${closestring} ${record.message} ');
  });
}

void main() async {
  //logger.d('Log message with 2 methods');

  // Basic logging setup.
  // util.setupLogging();
  _setupLogging();

  WidgetsFlutterBinding.ensureInitialized();
  // Put game into full screen mode on mobile devices.
  await SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  // // Lock the game to portrait mode on mobile devices.
  // await SystemChrome.setPreferredOrientations([
  //   DeviceOrientation.portraitUp,
  //   DeviceOrientation.portraitDown,
  // ]);

  await Flame.device.setLandscape();
  await Flame.device.fullScreen();

  Bloc.observer = CounterObserver();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static final _log = Logger('MyApp');

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //_log.severe('Oh noes!');

    return AppLifecycleObserver(
      child: MultiProvider(
        // This is where you add objects that you want to have available
        // throughout your game.
        //
        // Every widget in the game can access these objects by calling
        // `context.watch()` or `context.read()`.
        // See `lib/main_menu/main_menu_screen.dart` for example usage.
        providers: [
          Provider(create: (context) => SettingsController()),
          Provider(create: (context) => Palette()),
          ChangeNotifierProvider(create: (context) => PlayerProgress()),
          // Set up audio.
          ProxyProvider2<AppLifecycleStateNotifier, SettingsController,
              AudioController>(
            create: (context) => AudioController(),
            update: (context, lifecycleNotifier, settings, audio) {
              audio!.attachDependencies(lifecycleNotifier, settings);
              return audio;
            },
            dispose: (context, audio) => audio.dispose(),
            // Ensures that music starts immediately.
            lazy: false,
          ),
        ],
        child: Builder(builder: (context) {
          final palette = context.watch<Palette>();

          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            title: 'My Flutter Game',

            theme: flutterNesTheme().copyWith(
              colorScheme: ColorScheme.fromSeed(
                seedColor: palette.seed.color,
                background: palette.backgroundMain.color,
              ),
              textTheme: GoogleFonts.pressStart2pTextTheme().apply(
                bodyColor: palette.text.color,
                displayColor: palette.text.color,
              ),
            ),
            // theme: ThemeData.from(
            //   colorScheme: ColorScheme.fromSeed(
            //     seedColor: palette.darkPen,
            //     background: palette.backgroundMain,
            //   ),
            //   textTheme: TextTheme(
            //     bodyMedium: TextStyle(color: palette.ink),
            //   ),
            //   useMaterial3: true,
            // ).copyWith(
            //   // Make buttons more fun.
            //   filledButtonTheme: FilledButtonThemeData(
            //     style: FilledButton.styleFrom(
            //       textStyle: TextStyle(
            //         fontWeight: FontWeight.bold,
            //         fontSize: 20,
            //       ),
            //     ),
            //   ),
            // ),
            routeInformationProvider: router.routeInformationProvider,
            routeInformationParser: router.routeInformationParser,
            routerDelegate: router.routerDelegate,
          );
        }),
      ),
    );
  }
}
