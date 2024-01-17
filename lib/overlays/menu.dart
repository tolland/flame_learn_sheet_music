import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart' hide Image, Gradient;
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/game_stats/game_stats_bloc.dart';
import '../game.dart';
import '../learn_sheet_music.dart';
import 'menu_card.dart';

class PrestartMenu extends StatelessWidget {
  const PrestartMenu(this.game, {super.key});

  final LearnSheetMusicGame game;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Material(
      color: Colors.transparent,
      child: Center(
        child: Wrap(
          children: [
            Column(
              children: [
                MenuCard(
                  children: [
                    Text(
                      'Get ready to practice!',
                      style: textTheme.displayMedium,
                    ),
                    Text(
                      'Press space or middle C on your midi keyboard to start',
                      style: textTheme.bodyLarge,
                    ),
                    const SizedBox(height: 10),
                    ElevatedButton(
                      child: const Text('1 Player'),
                      onPressed: () {
                        context.read<GameStatsBloc>().add(GameStart());
                        game.overlays.remove(GameView.prestartMenu);
                      },
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
