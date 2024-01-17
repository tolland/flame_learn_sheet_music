import 'package:equatable/equatable.dart';
import 'package:flame_learn_sheet_music/managers/note_manager.dart';
import 'package:flame_learn_sheet_music/models/pitch.dart';

import 'note_value.dart';

class Note  extends Equatable {
  final Pitch pitch;
  final NoteValueLength value;

  const Note(
      this.pitch, {
        this.value = NoteValueLength.quarter,
      });

  Note.pitch(
      String pitch, {
        this.value = NoteValueLength.quarter,
      }) : pitch = NoteManager.keys[pitch]!;

  @override
  List<Object?> get props => [pitch, value];
}
