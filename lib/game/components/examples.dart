import 'package:dashbook/dashbook.dart';
import 'package:flame/game.dart';

import 'components.dart';

void addComponentsStories(Dashbook dashbook) {
  dashbook.storiesOf('Components')
    ..add(
      'Game Area Example',
      (_) => GameWidget(game: GameAreaSingleExample()),
      info: GameAreaSingleExample.description,
    )
    ..add(
      'Note System',
      (ctx) => GameWidget(
          game: NoteSystemExample(
              pickNotes: ctx.listProperty(
        'Label',
        'first',
        ['first', 'second', 'Other label'],
      ))),
      info: NoteSystemExample.description,
    );
}
