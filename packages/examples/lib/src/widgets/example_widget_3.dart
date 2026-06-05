import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logging/logging.dart';
import 'package:simple_piano/simple_piano.dart';
import 'package:simple_piano_keylistener/simple_piano_keylistener.dart';
import 'package:sound_service/sound_service.dart';
import 'package:virtual_keyboard_status/virtual_keyboard_status.dart';

class ExampleWidget1 extends StatefulWidget {
  static final _log = Logger('ExampleWidget1');

  ExampleWidget1({super.key}) {
    _log.info("ExampleWidget1 constructor");
  }

  @override
  State<ExampleWidget1> createState() => _ExampleWidget1State();
}

class _ExampleWidget1State extends State<ExampleWidget1> {
  static final _log = Logger('_ExampleWidget1State');

  @override
  void initState() {
    context.read<SoundServiceBloc>().add(
          const SoundServiceEvent.start(),
        );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<SimplePianoBloc, SimplePianoState>(
          listener: (context, state) {
            for (var noteOn in state.notesOn) {
              _log.fine(
                  "noteOn: $noteOn - (in example widget 1 handler) isplaying:${state.isKeyDown} 111");
              context.read<SoundServiceBloc>().add(
                SoundServiceEvent.noteOn(
                  number: noteOn,
                  velocity: 15,
                  channel: 0,
                ),
              );
            }
            for (var noteOff in state.notesOff) {
              ExampleWidget1._log.fine(
                  "noteOff: $noteOff - (in example widget 1 handler) isPlaying:${state.isKeyDown}");
              context.read<SoundServiceBloc>().add(
                SoundServiceEvent.noteOff(
                  number: noteOff,
                  velocity: 15,
                  channel: 0,
                ),
              );
            }
          },
        ),
        BlocListener<KeyListenerBloc, KeyListenerState>(
          listener: (context, state) {
            if(state.keysDownPhysical.isNotEmpty) {
              //_log.fine("key listener bloc state listener");
              for(PhysicalKeyboardKey key in state.keysDownPhysical) {
                if(Mappings.physKeyMapToPitch.containsKey(key)) {
                  _log.fine("logging key C");
                  context.read<SoundServiceBloc>().add(
                    SoundServiceEvent.noteOn(
                      number: Mappings.physKeyMapToPitch[key]!,
                      velocity: 15,
                      channel: 0,
                    ),
                  );
                }
              }
            }
            if(state.keysUpPhysical.isNotEmpty) {
              //_log.fine("key listener bloc state listener");
              for(PhysicalKeyboardKey key in state.keysUpPhysical) {
                if(Mappings.physKeyMapToPitch.containsKey(key)) {
                  _log.fine("logging keyUp C");
                  context.read<SoundServiceBloc>().add(
                    SoundServiceEvent.noteOff(
                      number: Mappings.physKeyMapToPitch[key]!,
                      velocity: 15,
                      channel: 0,
                    ),
                  );
                }
              }
            }
            print("sending state ${state.physicalKeysPressed}");
            context.read<VirtualKeyboardStatusBloc>().add(
                  VirtualKeyboardStatusEvent.keyDown(
                    keysPressed: state.keysPressed,
                    physicalKeysPressed: state.physicalKeysPressed,
                  ),
                );
          },
        ),
        BlocListener<VirtualKeyboardStatusBloc, VirtualKeyboardStatusState>(
          listener: (context, state) {
            // print("state in keylistener bloc listener: $state");
          },
        ),
      ],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SimplePiano.keys49c(),
          Expanded(
            child: SimplePianoKeyDisplay(),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
