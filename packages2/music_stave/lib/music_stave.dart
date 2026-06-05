import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class ClefQuestBar extends StatefulWidget {
  const ClefQuestBar({super.key});

  @override
  State<ClefQuestBar> createState() => _ClefQuestBarState();
}

class _ClefQuestBarState extends State<ClefQuestBar> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            'Almost before we knew it, we had left the ground.',
            style: TextStyle(
              fontFamily: 'Noto Music',
              fontSize: 36.0,
              color: Colors.teal,
              fontWeight: FontWeight.bold,
              package: 'music_stave',
            ),
          ),
          Text(
            'ß=Y=!=X==W===V==W=!=E=D=S===R===:=',
            style: TextStyle(
              debugLabel: 'ClefQuestBarFont',
              fontFamily: 'MusiQwik',
              package: 'music_stave',
              fontSize: 66.0,
              color: Colors.black,
              fontWeight: FontWeight.normal,
              decoration: TextDecoration.none,
            ),
          ),
          Text(
            '&&&&&&',
            style: TextStyle(
              fontFamily: 'Fondamento',
              package: 'music_stave',
            ),
          ),
          AnimatedTextKit(
            animatedTexts: [
              TypewriterAnimatedText(
                '&==ß=Y=!=X==W===V==W=!=E=D=S===R===:=',
                cursor: '',
                textStyle: const TextStyle(
                  fontFamily: 'MusiQwik',
                  package: 'music_stave',
                  fontSize: 66.0,
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                  decoration: TextDecoration.none,
                ),
                speed: const Duration(milliseconds: 500),
              ),
            ],
            totalRepeatCount: 4,
            pause: const Duration(milliseconds: 1000),
            displayFullTextOnTap: true,
            stopPauseOnTap: true,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const SizedBox(width: 20.0, height: 100.0),
              const Text(
                'Be',
                style: TextStyle(fontSize: 43.0),
              ),
              const SizedBox(width: 20.0, height: 100.0),
              DefaultTextStyle(
                style: const TextStyle(
                  fontSize: 40.0,
                  fontFamily: 'Horizon',
                ),
                child: AnimatedTextKit(
                  animatedTexts: [
                    RotateAnimatedText('AWESOME'),
                    RotateAnimatedText('OPTIMISTIC'),
                    RotateAnimatedText('DIFFERENT'),
                  ],
                  onTap: () {
                    print("Tap Event");
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
