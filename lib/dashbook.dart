import 'package:flame/game.dart';
import 'package:flutter/material.dart';

import 'package:dashbook/dashbook.dart';

import 'components/note_spawner.dart';
import 'components/note_system.dart';

import 'package:music_score/music_score.dart';
import 'package:note_sequence/note_sequence.dart';


void main() {
  final dashbook = Dashbook(
    autoPinStoriesOnLargeScreen: true,
    usePreviewSafeArea: true,
  );

  dashbook.storiesOf('Notation').decorator(CenterDecorator()).add('Note System',
      (ctx) {
    return GameWidget(game: NoteSystemExample(

        pickNotes: ctx.listProperty('Label', 'first', ['first', 'second', 'Other label'])
    ));
  });

  // dashbook
  //     .storiesOf('midi player')
  //     .add('Note System', (ctx) {
  //
  //   return Sf2Player();
  // });

  // dashbook.storiesOf('MessageCard').decorator(CenterDecorator()).add(
  //   'default',
  //       (ctx) => MessageCard(
  //     message: ctx.textProperty('message', 'Some cool message'),
  //     type: ctx.listProperty('type', MessageCardType.info, MessageCardType.values),
  //     errorColor: ctx.colorProperty(
  //       'errorColor',
  //       const Color(0xFFCC6941),
  //       // this property will only be shown when type is error
  //       visibilityControlProperty: ControlProperty('type', MessageCardType.error),
  //     ),
  //     infoColor: ctx.colorProperty(
  //       'infoColor',
  //       const Color(0xFF5E89FF),
  //       // this property will only be shown when type is info
  //       visibilityControlProperty: ControlProperty('type', MessageCardType.info),
  //     ),
  //   ),
  // );

  dashbook.storiesOf('CustomDialog').add(
    'default',
    (ctx) {
      ctx.action('Open dialog', (context) {
        showDialog(
          context: context,
          builder: (_) => AlertDialog(
            title: const Text('Basic dialog title'),
            content: const Text(
              'A dialog is a type of modal window that\n'
              'appears in front of app content to\n'
              'provide critical information, or prompt\n'
              'for a decision to be made.',
            ),
            actions: <Widget>[
              TextButton(
                style: TextButton.styleFrom(
                  textStyle: Theme.of(context).textTheme.labelLarge,
                ),
                child: const Text('Disable'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              TextButton(
                style: TextButton.styleFrom(
                  textStyle: Theme.of(context).textTheme.labelLarge,
                ),
                child: const Text('Enable'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        );
      });

      return SizedBox();
    },
    info: 'Use the actions button on the side to show the dialog.',
    pinInfo: true,
  );

  // Adds the Text widget stories
  dashbook
      .storiesOf('Text')
      // Decorators are easy ways to apply a common layout to all of the story chapters, here are using onde of Dashbook's decorators,
      // which will center all the widgets on the center of the screen
      .decorator(CenterDecorator())
      // The Widget story can have as many chapters as needed
      .add('default', (ctx) {
    return Container(
        width: 300,
        child: Text(
          ctx.textProperty("text", "Text Example"),
          textAlign: ctx.listProperty(
            "text align",
            TextAlign.center,
            TextAlign.values,
          ),
          textDirection: ctx.listProperty(
            "text direction",
            TextDirection.rtl,
            TextDirection.values,
          ),
          style: TextStyle(
              fontWeight: ctx.listProperty(
                "font weight",
                FontWeight.normal,
                FontWeight.values,
              ),
              fontStyle: ctx.listProperty(
                "font style",
                FontStyle.normal,
                FontStyle.values,
              ),
              fontSize: ctx.numberProperty("font size", 20)),
        ));
  });

  // dashbook
  //     .storiesOf('RaisedButton')
  //     .decorator(CenterDecorator())
  //     .add('default', (ctx) => RaisedButton(child: Text('Ok'), onPressed: () {}));

  // Since dashbook is a widget itself, you can just call runApp passing it as a parameter

  // Adds the Text widget stories
  dashbook
      .storiesOf('Text1')
  // Decorators are easy ways to apply a common layout to all of the story chapters, here are using onde of Dashbook's decorators,
  // which will center all the widgets on the center of the screen
  //.decorator(CenterDecorator())
  // The Widget story can have as many chapters as needed
      .add('default', (ctx) {
    var score = Score(
      title: "My Score",
      description: "A score for testing",
      initialBeats: 4,
      initialBeatType: 4,
      initialDpq: 4,
    );

    var pianoPart = score.addPart(
      name: "Piano",
      description: "A piano part",
    );


    Staff trebleStaff = pianoPart.addStaff(
      clef: Clef.treble,
    );
    Staff bassStaff = pianoPart.addStaff(
      clef: Clef.bass,
    );

    var measure1 = score.addMeasure();
    score.currentMeasure = measure1;

    score.addNote(
      pitch: Util.fromSpn("C4"),
      duration: NoteDuration.quarter,
    );
    score.addNote(
      pitch: Util.fromSpn("D4"),
      duration: NoteDuration.quarter,
    );
    score.addNote(
      pitch: Util.fromSpn("E4"),
      duration: NoteDuration.quarter,
    );
    score.addNote(
      pitch: Util.fromSpn("F4"),
      duration: NoteDuration.quarter,
    );

    var measure2 = score.addMeasure();
    score.currentStaff = trebleStaff;

    score.addNote(
      pitch: Util.fromSpn("C4"),
      duration: NoteDuration.quarter,
    );
    score.addNote(
      pitch: Util.fromSpn("D4"),
      duration: NoteDuration.quarter,
    );

    return Column(
      children: [
        SizedBox(
            width: 800,
            height: 400,
            child: Container(
              child: NoteSequenceSystem(
                score: score,
              ),
            )),
        // SizedBox(
        //     width: 400,
        //     height: 400,
        //     child: Container(
        //       child: NoteSequenceSystem(
        //         score: score,
        //       ),
        //     )),
      ],
    );
  });

  runApp(dashbook);
}

class DialogExample extends StatelessWidget {
  const DialogExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('showDialog Sample')),
      body: Center(
        child: OutlinedButton(
          onPressed: () => _dialogBuilder(context),
          child: const Text('Open Dialog'),
        ),
      ),
    );
  }

  Future<void> _dialogBuilder(BuildContext context) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Basic dialog title'),
          content: const Text(
            'A dialog is a type of modal window that\n'
            'appears in front of app content to\n'
            'provide critical information, or prompt\n'
            'for a decision to be made.',
          ),
          actions: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: const Text('Disable'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: const Text('Enable'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
