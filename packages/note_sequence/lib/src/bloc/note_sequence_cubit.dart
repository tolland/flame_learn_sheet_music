import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'note_sequence_state.dart';

class NoteSequenceCubit extends Cubit<NoteSequenceState> {
  NoteSequenceCubit() : super(NoteSequenceInitial());
}
