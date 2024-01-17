import 'package:flutter/material.dart';

import 'package:dashbook/dashbook.dart';
import 'package:note_sequence/utils/util.dart';
import 'package:note_sequence/widgets/measure.dart';
import 'package:note_sequence/widgets/system.dart';

import 'model/clef.dart';
import 'model/duration.dart';
import 'model/measure.dart';
import 'model/part.dart';
import 'model/score.dart';

void main() {
  final dashbook = Dashbook(
    autoPinStoriesOnLargeScreen: true,
    usePreviewSafeArea: true,
  );

  // List<Widget> makeRowOfMeasures(Score myscore) {
  //   var measures = <Widget>[];
  //   for (var part in myscore.parts) {
  //     for (var measure in part.measures) {
  //       measures.add(MeasureWidget(
  //         measure: measure,
  //       ));
  //     }
  //   }
  //   return measures;
  // }

  // Adds the Text widget stories
  dashbook
      .storiesOf('Text')
      // Decorators are easy ways to apply a common layout to all of the story chapters, here are using onde of Dashbook's decorators,
      // which will center all the widgets on the center of the screen
      //.decorator(CenterDecorator())
      // The Widget story can have as many chapters as needed
      .add('default', (ctx) {
    var score = Score(
      title: "My Score",
      description: "A score for testing",
    );

    score.parts.clear();
    var pianoPart = score.addPart(Part.piano());

    var measure1 = pianoPart.addMeasure(Measure());
    measure1.currentStaff = Clef.treble;

    measure1.addNote(
      pitch: Util.fromSpn("C4"),
      duration: NoteDuration.quarter,
    );
    measure1.addNote(
      pitch: Util.fromSpn("D4"),
      duration: NoteDuration.quarter,
    );
    measure1.addNote(
      pitch: Util.fromSpn("E4"),
      duration: NoteDuration.quarter,
    );
    measure1.addNote(
      pitch: Util.fromSpn("F4"),
      duration: NoteDuration.quarter,
    );

    var measure2 = pianoPart.addMeasure(Measure());
    measure2.currentStaff = Clef.treble;

    measure2.addNote(
      pitch: Util.fromSpn("G4"),
      duration: NoteDuration.quarter,
    );
    measure2.addNote(
      pitch: Util.fromSpn("A4"),
      duration: NoteDuration.quarter,
    );
    measure2.addNote(
      pitch: Util.fromSpn("B4"),
      duration: NoteDuration.quarter,
    );
    measure2.addNote(
      pitch: Util.fromSpn("C5"),
      duration: NoteDuration.quarter,
    );

    measure2.currentStaff = Clef.bass;


    measure2.addNote(
      pitch: Util.fromSpn("A3"),
      duration: NoteDuration.quarter,
    );



    return NoteSequenceSystem(
      score: score,
    );
  });

  // dashbook
  //     .storiesOf('RaisedButton')
  //     .decorator(CenterDecorator())
  //     .add('default', (ctx) => RaisedButton(child: Text('Ok'), onPressed: () {}));

  // Since dashbook is a widget itself, you can just call runApp passing it as a parameter
  runApp(dashbook);
}
