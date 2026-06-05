import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:file_picker/file_picker.dart';
import 'package:logging/logging.dart';
import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';
import 'package:dart_midi/dart_midi.dart';
import 'package:sound_service/sound_service.dart';

import '../../managers/adjustable_periodic_stream.dart';

part 'midi_player_event.dart';

part 'midi_player_state.dart';

class MidiPlayerBloc extends Bloc<MidiPlayerEvent, MidiPlayerState> {
  static final _log = Logger('MidiPlayerBloc');

  // track the next event to play
  int nextEventIndex;

  // track how many clock ticks have passed
  int tickCount;
  final List<MidiEvent> events = [];
  MidiFile? midiFile;
  late StreamSubscription<DateTime> _clockSubscription;
  final SoundServiceBloc soundServiceBloc;

  // Timer? _timer;
  late Duration _tickDuration;
  AdjustablePeriodicStream? adjustableStream;

  MidiPlayerBloc({
    required this.soundServiceBloc,
  })  : nextEventIndex = 0,
        tickCount = 0,
        super(const MidiPlayerState()) {
    ///
    on<MidiPlayerLoad>((event, emit) {
      final midiFile = MidiParser().parseMidiFromBuffer(event.fileBytes);
      emit(state.copyWith(
        midiFile: midiFile,
      ));
    });

    on<MidiPlayerLoadFilePicker>((event, emit) async {
      //MidiFile midiFile;

      FilePickerResult? result = await event.result.whenComplete(() {});
      if (result != null && result.files.isNotEmpty) {
        final fileBytes = result.files.first.bytes;
        midiFile = MidiParser().parseMidiFromBuffer(fileBytes!);

        events.clear();

        _log.config("header: ${midiFile?.header}");

        for (List<MidiEvent> track in midiFile!.tracks) {
          for (MidiEvent event in track) {
            // _log.config(event.toString());
            //if (event is NoteOnEvent || event is NoteOffEvent) {
            events.add(event);
            //}
          }
        }
        events.sort((a, b) => a.tickFromStart.compareTo(b.tickFromStart));

        for (MidiEvent event in events) {
          _log.config("event: $event");
        }

        _log.fine("file loaded");

        emit(state.copyWith(
          status: MidiPlayerStatus.loaded,
        ));
      }
      // event.result.then((value) {
      //
      // }).catchError((error) {
      //   print("catchError $error");
      // });
    });

    on<MidiPlayerPlay>((event, emit) {
      _log.fine("got here in MidiPlayerPlay");

      _tickDuration = const Duration(
        milliseconds: 12,
      );

      adjustableStream =
          AdjustablePeriodicStream(initialDuration: _tickDuration);

      _clockSubscription = adjustableStream!.stream.listen((time) {
        tick();
      });

      emit(state.copyWith(
        status: MidiPlayerStatus.playing,
      ));
    });

    on<MidiPlayerStop>((event, emit) {
      _clockSubscription.cancel();
      tickCount = 0;
      nextEventIndex = 0;

      emit(state.copyWith(
        status: MidiPlayerStatus.stopped,
      ));
    });
  }

  void tick() {
    /// tick is 120 midi ticks
    int startTick = tickCount * 12;
    int endTick = (tickCount + 1) * 12 - 1;

    if (nextEventIndex >= events.length) {
      _log.shout("no more events");
      add(
        MidiPlayerStop(),
      );
      return;
    }

   // _log.shout("events startTick: $startTick endTick: $endTick");
    for (int index = nextEventIndex; index < events.length; index++) {
      if (events[index].tickFromStart >= startTick &&
          events[index].tickFromStart <= endTick) {
        /// play the event
        if (events[index] is SetTempoEvent) {
       //   _log.config("got here");
          SetTempoEvent event = (events[index] as SetTempoEvent);
     //     _log.config("got here2");

          _log.config(
              "midiFile!.header.ticksPerBeat: ${midiFile!.header.ticksPerBeat}");
          _log.config(
              "event.microsecondsPerBeat: ${event.microsecondsPerBeat}");

          int millis = (20 *
                  (event.microsecondsPerBeat / 1000) /
                  midiFile!.header.ticksPerBeat!)
              .round();

          // double millis = (60 / (events[index] as SetTempoEvent).microsecondsPerBeat * (1000 / 4));
          _log.config("setting new millis: $millis");
          adjustableStream?.changeDuration(Duration(milliseconds: millis));
        } else if (events[index] is NoteOnEvent) {
          // _log.fine("note on: ${events[index]}");
          soundServiceBloc.add(
            SoundServiceEvent.noteOn(
              number: (events[index] as NoteOnEvent).noteNumber,
              velocity: 15,
              channel: 0,
            ),
          );
        } else if (events[index] is NoteOffEvent) {
          //  _log.fine("note off: ${events[index]}");
          soundServiceBloc.add(
            SoundServiceEvent.noteOff(
              number: (events[index] as NoteOffEvent).noteNumber,
              velocity: 15,
              channel: 0,
            ),
          );
        }
        nextEventIndex++;
      } else {
        break;
      }
    }
    tickCount++;
    // emit(state.copyWith(bpm: state.bpm + 5));
    // adjustableStream?.changeDuration(Duration(milliseconds: millis));
    // emit(state.copyWith(
    //   bpm: _dirty ? newBpm : state.bpm,
    //   status: MetronomeStatus.running,
    //   ticks: state.ticks + 1,
    //   halfBeats: _halfBeatsDirty ? _halfBeats : state.halfBeats,
    //   quarterBeats: _quarterBeatsDirty ? _quarterBeats : state.quarterBeats,
    // ));
    //adjustableStream?.changeDuration(Duration(milliseconds: millis));
  }

  @override
  Future<void> close() {
    _clockSubscription.cancel();
    adjustableStream?.dispose();
    return super.close();
  }
}
