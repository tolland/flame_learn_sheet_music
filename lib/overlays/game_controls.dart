import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:nes_ui/nes_ui.dart';

import '../bloc/keyboard/piano_bloc.dart';
import '../learn_sheet_music.dart';

class GameControls extends StatelessWidget {
  const GameControls(this.game, {super.key});

  final LearnSheetMusicGame game;

  // Reference to parent game.
  //final LearnSheetMusicGame game;

  @override
  Widget build(BuildContext context) {
    const blackTextColor = Color.fromRGBO(0, 0, 0, 1.0);
    const whiteTextColor = Color.fromRGBO(255, 255, 255, 1.0);

    PianoBloc bloc = context.read<PianoBloc>();

    return Material(
      color: Colors.transparent,
      child: Stack(
        children: [
          Positioned(
            top: 20,
            right: 10,
            child: NesButton(
              type: NesButtonType.normal,
              onPressed: GoRouter.of(context).pop,
              child: NesIcon(iconData: NesIcons.leftArrowIndicator),
            ),
          ),
          Positioned(
            top: 20,
            right: 100,
            child: NesButton(
              type: NesButtonType.normal,
              onPressed: () {
                context.read<PianoBloc>().add(PianoToggleShow());
              },
              child: NesIcon(iconData: NesIcons.closedEye),
            ),
          ),
        ],
      ),
    );
  }
}
