import 'package:flame_learn_sheet_music/bloc/keyboard/piano_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../learn_sheet_music.dart';

class MainMenu extends StatelessWidget {
  // Reference to parent game.
  //final LearnSheetMusicGame game;

  //const MainMenu({super.key, required this.game});

  @override
  Widget build(BuildContext context) {
    const blackTextColor = Color.fromRGBO(0, 0, 0, 1.0);
    const whiteTextColor = Color.fromRGBO(255, 255, 255, 1.0);

    PianoBloc bloc = context.read<PianoBloc>();

    return Material(
      color: Colors.transparent,
      child: Center(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          height: 280,
          width: 300,
          decoration: const BoxDecoration(
            color: blackTextColor,
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Ember Quest',
                style: TextStyle(
                  color: whiteTextColor,
                  fontSize: 21,
                ),
              ),
              const SizedBox(height: 40),
              SizedBox(
                width: 200,
                height: 75,
                child: ElevatedButton(
                  onPressed: () {
                    //game.overlays.remove('MainMenu');
                    bloc.add(PianoPause());
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: whiteTextColor,
                  ),
                  child: const Text(
                    'Play',
                    style: TextStyle(
                      fontSize: 40.0,
                      color: blackTextColor,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                '''Use WASD or Arrow Keys for movement.
Space bar to jump.
Collect as many stars as you can and avoid enemies!''',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: whiteTextColor,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
