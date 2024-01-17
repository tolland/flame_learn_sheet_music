import 'package:flame/components.dart';
import 'package:flame_audio/flame_audio.dart';
import 'package:flame_bloc/flame_bloc.dart';
import 'package:flame_learn_sheet_music/managers/note_manager.dart';
import 'package:flutter/material.dart';
import 'package:logging/logging.dart';

import '../bloc/keyboard/piano_bloc.dart';
import '../learn_sheet_music.dart';
import 'package:collection/collection.dart';

import '../models/pitch.dart';

class AudioManager extends Component
    with HasGameReference<LearnSheetMusicGame> {
  static final _log = Logger('AudioManager');

  AudioManager() : super();

  List<Pitch> pitchesPlayingHere=[];

  //@TODO: figure out how to make this a singleton
  // this is some stupid stuff as its being called twice
  static final AudioManager _singleton = AudioManager();

  factory AudioManager.singleton() {
    // assert(
    // value >= 1 && value <= 13,
    // 'value is outside of the bounds of what a rank can be',
    // );
    return _singleton;
  }

  // @override
  // void onNewState(state) {
  //   _log.fine(() => "handling new state in audio thing $state");
  // }

  Function eq = const ListEquality().equals;


  // @override
  // void onRemove() {
  //   _log.fine(() => "in onRemove in audio_manager");
  //
  // }


  // @override
  // void onMount() {
  //   _log.fine(() => "in onMount in audio_manager");
  // }


  @override
  void onMount() {
    _log.finer(() => "${hashCode} - in onMount in - ${toString()}");
    super.onMount();
  }


  @override
  void onRemove() {
    _log.finer(() => "${hashCode} - in onRemove in - ${toString()}");
    super.onRemove();
  }

  @override
  Future<void> onLoad() async {
    _log.finer(() => "${hashCode} in onLoad in audio_manager - ${toString()}");
    await add(
      FlameBlocListener<PianoBloc, PianoState>(
        // listenWhen: (previousState, newState) {
        //   _log.fine(() => "${eq(previousState.keysPressed, newState.keysPressed)}");
        //   _log.fine(() => "${previousState != newState}");
        //   return eq(previousState.keysPressed, newState.keysPressed);
        //   // return true/false to determine whether or not
        //   // to call listener with state
        // },
        onNewState: (state) {
          //updateGear(state);
          _log.finer(() => "handling new state in audio thing2");
          _log.finer(() => "object hash is ${hashCode}");
          _log.finer(() => "pitchesPlaying are ${state.pitchesPlaying}");
          _log.finer(() => "pitchesPlayingHere are ${pitchesPlayingHere}");

          var toRemove = [];
          for( var pitch in pitchesPlayingHere) {
            if (!state.pitchesPlaying.contains(pitch)) {
              //_log.fine(() => "stopping ${pitch}");
              toRemove.add(pitch);
            }
          }
          pitchesPlayingHere.removeWhere( (e) => toRemove.contains(e));

          //_log.fine(() => "pitchesPlayingHere are ${pitchesPlayingHere}");

          //if (state.pitchesPlaying.isEmpty) return;

          for (var pitch in state.pitchesPlaying) {
            if (!pitchesPlayingHere.contains(pitch)) {
              pitchesPlayingHere.add(pitch);
              _log.finer(() => "playing ${pitch}");
              var soundfile = pitch.sound;
              _log.finer(() => "playing $soundfile");
              FlameAudio.play(soundfile, volume: 1.0);
            }
          }

        },
      ),
    );
  }
}
