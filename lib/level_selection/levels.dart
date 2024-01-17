// Copyright 2022, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import '../models/note.dart';
import 'game_level.dart';

var messages = [
  {"value":"value1","interval": 5},
  {"value":"value2","interval": 10},
  {"value":"value3","interval": 5},
];

// Stream<String> sendMessagesWithIntervals(List<Note> notes) async* {
//   for (var note in notes) {
//     await Future.delayed(Duration(seconds: note.interval));
//     yield message["value"];
//   }
// }

List<GameLevel> gameLevels = [
  GameLevel(
    number: 1,
    description: 'The first 5 notes in the treble clef',
    difficulty: 5,
    // TODO: When ready, change these achievement IDs.
    // You configure this in App Store Connect.
    achievementIdIOS: 'first_win',
    // You get this string when you configure an achievement in Play Console.
    achievementIdAndroid: 'NhkIwB69ejkMAOOLDb',
    notes: [
      Note.pitch('C4'),
      Note.pitch('D4'),
      Note.pitch('E4'),
      Note.pitch('F4'),
      Note.pitch('G4'),
    ],
  ),
  GameLevel(
    number: 2,
    description: 'All white notes in the treble clef',
    difficulty: 42,
    timeLimit: 60.0,
    notes: [
      Note.pitch('C4'),
      Note.pitch('D4'),
      Note.pitch('E4'),
      Note.pitch('F4'),
      Note.pitch('G4'),
      Note.pitch('A4'),
      Note.pitch('B4'),
    ],
  ),
  GameLevel(
    number: 3,
    description: 'All white notes including black notes',
    difficulty: 100,
    achievementIdIOS: 'finished',
    achievementIdAndroid: 'CdfIhE96aspNWLGSQg',
    notes: [
      Note.pitch('C4'),
      Note.pitch('C#4'),
      Note.pitch('D4'),
      Note.pitch('D#4'),
      Note.pitch('E4'),
      Note.pitch('F4'),
      Note.pitch('F#4'),
      Note.pitch('G4'),
      Note.pitch('G#4'),
      Note.pitch('A4'),
      Note.pitch('B4'),
    ],
  ),
  GameLevel(
    number: 4,
    description: 'Just black notes in 1st octave',
    difficulty: 100,
    achievementIdIOS: 'finished',
    achievementIdAndroid: 'CdfIhE96aspNWLGSQg',
    notes: [
      Note.pitch('C#4'),
      Note.pitch('D#4'),
      Note.pitch('F#4'),
      Note.pitch('G#4'),
      Note.pitch('A#4'),
    ],
  ),
  GameLevel(
    number: 5,
    description: 'Just one note',
    difficulty: 100,
    achievementIdIOS: 'finished',
    achievementIdAndroid: 'CdfIhE96aspNWLGSQg',
    notes: [
      Note.pitch('C#4'),
    ],
  ),
];
