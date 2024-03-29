import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:logging/logging.dart';
import 'package:provider/provider.dart';

import '../audio/audio_controller.dart';
import '../audio/sounds.dart';
import '../settings/settings.dart';
import '../style/my_button.dart';
import '../style/wobbly_button.dart';
import '../style/palette.dart';
import '../style/responsive_screen.dart';

class MainMenuScreen extends StatelessWidget {
  static final _log = Logger('MainMenuScreen');

  const MainMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final palette = context.read<Palette>();
    final settingsController = context.read<SettingsController>();
    final audioController = context.read<AudioController>();

    _log.finer(() => "$hashCode - calling build in virtual_piano.dart menu screen");

    return Scaffold(
      backgroundColor: palette.backgroundMain.color,
      body: ResponsiveScreen(
        squarishMainArea: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/banner.png',
                filterQuality: FilterQuality.none,
              ),
              _gap,
              Transform.rotate(
                angle: -0.1,
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 500),
                  // child: const Text(
                  //   'A Flutter game template.',
                  //   textAlign: TextAlign.center,
                  //   style: TextStyle(
                  //     fontFamily: 'Press Start 2P',
                  //     fontSize: 32,
                  //     height: 1,
                  //   ),
                  // ),
                ),
              ),
            ],
          ),
        ),
        rectangularMenuArea: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyButton(
              onPressed: () {
                _log.fine(() => "was clicked here the noise");
                audioController.playSfx(SfxType.buttonTap);
              },
              child: const Text('Click sound'),
            ),
            _gap,
            MyButton(
              onPressed: () {
                audioController.playSfx(SfxType.buttonTap);
                GoRouter.of(context).go('/play');
              },
              child: const Text('Play'),
            ),
            _gap,
            MyButton(
              onPressed: () => GoRouter.of(context).push('/settings'),
              child: const Text('Settings'),
            ),
            _gap,
            Padding(
              padding: const EdgeInsets.only(top: 32),
              child: ValueListenableBuilder<bool>(
                valueListenable: settingsController.audioOn,
                builder: (context, audioOn, child) {
                  return IconButton(
                    onPressed: () => settingsController.toggleAudioOn(),
                    icon: Icon(audioOn ? Icons.volume_up : Icons.volume_off),
                  );
                },
              ),
            ),
            _gap,
          ],
        ),
      ),
    );
  }

  static const _gap = SizedBox(height: 10);
}
