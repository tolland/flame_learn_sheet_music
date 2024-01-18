import 'dart:js_interop';

import 'package:flutter/material.dart';

import 'package:dashbook/dashbook.dart';
import 'package:note_sequence/note_sequence.dart';
import 'package:music_score/music_score.dart';

void main() {
  final dashbook = Dashbook(
    autoPinStoriesOnLargeScreen: true,
    usePreviewSafeArea: true,
  );

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

    score.currentPart = pianoPart;
    score.currentStaff = trebleStaff;
    score.currentMeasure = measure1;

    score.addNote(
      pitch: Util.fromSpn("C4"),
      duration: NoteDuration.quarter,
    );

    score.addNote(
      pitch: Util.fromSpn("rest"),
      duration: NoteDuration.quarter,
      measure: measure1,
      staff: bassStaff,
    );

    score.addNote(
      pitch: Util.fromSpn("rest"),
      duration: NoteDuration.quarter,
      measure: measure1,
      staff: bassStaff,
    );

    score.addNote(
      pitch: Util.fromSpn("rest"),
      duration: NoteDuration.quarter,
      measure: measure1,
      staff: bassStaff,
    );



    score.addNote(
      pitch: Util.fromSpn("F2"),
      duration: NoteDuration.quarter,
      staff: bassStaff,
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

    score.addNote(
      pitch: Util.fromSpn("F4"),
      duration: NoteDuration.quarter,
    );

    var measure2 = score.addMeasure();

    score.currentPart = pianoPart;
    score.currentStaff = trebleStaff;

    score.addNote(
      pitch: Util.fromSpn("G2"),
      duration: NoteDuration.quarter,
      measure: measure2,
      staff: bassStaff,
    );

    score.addNote(
      pitch: Util.fromSpn("rest"),
      duration: NoteDuration.quarter,
      measure: measure2,
      staff: bassStaff,
    );

    score.addNote(
      pitch: Util.fromSpn("G4"),
      duration: NoteDuration.quarter,
    );
    score.addNote(
      pitch: Util.fromSpn("A4"),
      duration: NoteDuration.quarter,
    );
    score.addNote(
      pitch: Util.fromSpn("B4"),
      duration: NoteDuration.quarter,
    );
    score.addNote(
      pitch: Util.fromSpn("C5"),
      duration: NoteDuration.quarter,
    );

    score.currentStaff = bassStaff;

    score.addNote(
      pitch: Util.fromSpn("A2"),
      duration: NoteDuration.quarter,
    );

    score.addNote(
      pitch: Util.fromSpn("rest"),
      duration: NoteDuration.quarter,
    );

    var measure23 = score.addMeasure();
    score.currentStaff = trebleStaff;

    score.addNote(
      pitch: Util.fromSpn("G4"),
      duration: NoteDuration.quarter,
    );
    score.addNote(
      pitch: Util.fromSpn("A4"),
      duration: NoteDuration.quarter,
    );
    score.addNote(
      pitch: Util.fromSpn("B4"),
      duration: NoteDuration.quarter,
    );
    score.addNote(
      pitch: Util.fromSpn("C5"),
      duration: NoteDuration.quarter,
    );

    score.currentStaff = bassStaff;

    score.addNote(
      pitch: Util.fromSpn("A2"),
      duration: NoteDuration.quarter,
    );

    score.addNote(
      pitch: Util.fromSpn("rest"),
      duration: NoteDuration.quarter,
    );

    score.addNote(
      pitch: Util.fromSpn("A2"),
      duration: NoteDuration.quarter,
    );

    score.addNote(
      pitch: Util.fromSpn("rest"),
      duration: NoteDuration.quarter,
    );

    var measure4 = score.addMeasure();
    score.currentStaff = trebleStaff;

    score.addNote(
      pitch: Util.fromSpn("G4"),
      duration: NoteDuration.quarter,
    );
    score.addNote(
      pitch: Util.fromSpn("A4"),
      duration: NoteDuration.quarter,
    );
    score.addNote(
      pitch: Util.fromSpn("B4"),
      duration: NoteDuration.quarter,
    );
    score.addNote(
      pitch: Util.fromSpn("C5"),
      duration: NoteDuration.quarter,
    );

    score.currentStaff = bassStaff;

    score.addNote(
      pitch: Util.fromSpn("A2"),
      duration: NoteDuration.quarter,
    );

    score.addNote(
      pitch: Util.fromSpn("rest"),
      duration: NoteDuration.quarter,
    );

    score.addNote(
      pitch: Util.fromSpn("A2"),
      duration: NoteDuration.quarter,
    );

    score.addNote(
      pitch: Util.fromSpn("rest"),
      duration: NoteDuration.quarter,
    );

    var measure5 = score.addMeasure();
    score.currentStaff = trebleStaff;

    score.addNote(
      pitch: Util.fromSpn("G4"),
      duration: NoteDuration.quarter,
    );
    score.addNote(
      pitch: Util.fromSpn("A4"),
      duration: NoteDuration.quarter,
    );
    score.addNote(
      pitch: Util.fromSpn("B4"),
      duration: NoteDuration.quarter,
    );
    score.addNote(
      pitch: Util.fromSpn("C5"),
      duration: NoteDuration.quarter,
    );

    score.currentStaff = bassStaff;

    score.addNote(
      pitch: Util.fromSpn("A2"),
      duration: NoteDuration.quarter,
    );

    score.addNote(
      pitch: Util.fromSpn("rest"),
      duration: NoteDuration.quarter,
    );

    score.addNote(
      pitch: Util.fromSpn("A2"),
      duration: NoteDuration.quarter,
    );

    score.addNote(
      pitch: Util.fromSpn("rest"),
      duration: NoteDuration.quarter,
    );

    var measure6 = score.addMeasure();
    score.currentStaff = trebleStaff;

    score.addNote(
      pitch: Util.fromSpn("G4"),
      duration: NoteDuration.quarter,
    );
    score.addNote(
      pitch: Util.fromSpn("A4"),
      duration: NoteDuration.quarter,
    );
    score.addNote(
      pitch: Util.fromSpn("B4"),
      duration: NoteDuration.quarter,
    );
    score.addNote(
      pitch: Util.fromSpn("C5"),
      duration: NoteDuration.quarter,
    );

    score.currentStaff = bassStaff;

    score.addNote(
      pitch: Util.fromSpn("A2"),
      duration: NoteDuration.quarter,
    );

    score.addNote(
      pitch: Util.fromSpn("rest"),
      duration: NoteDuration.quarter,
    );

    score.addNote(
      pitch: Util.fromSpn("C3"),
      duration: NoteDuration.eighth,
    );
    score.addNote(
      pitch: Util.fromSpn("C3"),
      duration: NoteDuration.eighth,
    );

    score.addNote(
      pitch: Util.fromSpn("rest"),
      duration: NoteDuration.quarter,
    );

    var measure7 = score.addMeasure();
    score.currentStaff = trebleStaff;

    score.addNote(
      pitch: Util.fromSpn("G4"),
      duration: NoteDuration.quarter,
    );
    score.addNote(
      pitch: Util.fromSpn("A4"),
      duration: NoteDuration.quarter,
    );
    score.addNote(
      pitch: Util.fromSpn("B4"),
      duration: NoteDuration.quarter,
    );
    score.addNote(
      pitch: Util.fromSpn("A4"),
      duration: NoteDuration.quarter,
    );

    score.currentStaff = bassStaff;

    score.addNote(
      pitch: Util.fromSpn("A2"),
      duration: NoteDuration.quarter,
    );

    score.addNote(
      pitch: Util.fromSpn("rest"),
      duration: NoteDuration.quarter,
    );

    score.addNote(
      pitch: Util.fromSpn("E2"),
      duration: NoteDuration.eighth,
    );

    score.addNote(
      pitch: Util.fromSpn("A2"),
      duration: NoteDuration.eighth,
    );

    score.addNote(
      pitch: Util.fromSpn("G2"),
      duration: NoteDuration.eighth,
    );

    // score.addNote(
    //   pitch: Util.fromSpn("rest"),
    //   duration: NoteDuration.quarter,
    // );

    print(score);
    print("===============>>>>>>>>>>>>>>>>>+++++++++++++++");
    score.validate();
    print("===============>>>>>>>>>>>>>>>>>+++++++++++++++");

    score.renderTimewise();

    var test = TextStyle(
      fontFamily: 'MusiQwik',
      package: 'musiqwik_font',
      fontWeight: FontWeight.normal,
      fontSize: 66,
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
