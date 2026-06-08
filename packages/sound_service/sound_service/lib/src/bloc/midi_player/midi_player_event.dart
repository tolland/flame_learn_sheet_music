part of 'midi_player_bloc.dart';

abstract class MidiPlayerEvent {
  const MidiPlayerEvent();
}

class MidiPlayerInitial extends MidiPlayerEvent {}

class MidiPlayerLoad extends MidiPlayerEvent {
  final List<int> fileBytes;

  MidiPlayerLoad({
    required this.fileBytes,
  });
}

class MidiPlayerLoadFilePicker extends MidiPlayerEvent {
  final Future<FilePickerResult?> result;

  MidiPlayerLoadFilePicker({
    required this.result,
  });
}

class MidiPlayerLoadPlayFile extends MidiPlayerEvent {
  MidiPlayerLoadPlayFile();
}

class MidiPlayerPlay extends MidiPlayerEvent {
  MidiPlayerPlay();
}

class MidiPlayerStop extends MidiPlayerEvent {
  MidiPlayerStop();
}
