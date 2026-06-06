import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logging/logging.dart';
import 'package:simple_piano/simple_piano.dart';
import 'package:simple_piano_keylistener/simple_piano_keylistener.dart';
import 'package:simple_piano_waterfall/piano_waterfall.dart';
import 'package:sound_service/sound_service.dart';
import 'package:sound_service_examples/src/widgets/soundpool_key_listener.dart';
import 'package:virtual_keyboard_status/virtual_keyboard_status.dart';

class PianoPlusWaterfall extends StatefulWidget {
  static final _log = Logger('PianoPlusWaterfall');

  PianoPlusWaterfall({super.key}) {
    _log.fine("PianoPlusWaterfall constructor");
  }

  @override
  State<PianoPlusWaterfall> createState() => _PianoPlusWaterfallState();
}

class _PianoPlusWaterfallState extends State<PianoPlusWaterfall> {
  static final _log = Logger('_PianoPlusWaterfallState');

  bool isWebInitialized = false;

  final StreamController<int> notesOnController =
      StreamController<int>.broadcast();

  final StreamController<int> notesOffController =
      StreamController<int>.broadcast();

  @override
  Widget build(BuildContext context) {
    _log.fine("calling build in $hashCode");

    //print("$noteOn()");

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => SimplePianoBloc(),
        ),
        BlocProvider(
          create: (context) => KeyListenerBloc(),
        ),
        BlocProvider(
          create: (context) => VirtualKeyboardStatusBloc(),
        ),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<SimplePianoBloc, SimplePianoState>(
            listener: (context, state) {
              for (var noteOn in state.notesOn) {
                _log.fine(
                    "noteOn: $noteOn - (in example widget 1 handler) isplaying:${state.isKeyDown} 111");
                // notesOnController.add(noteOn);
                context.read<SoundServiceBloc>().add(
                      SoundServiceEvent.noteOn(
                        number: noteOn,
                        velocity: 15,
                        channel: 0,
                      ),
                    );
              }
              for (var noteOff in state.notesOff) {
                PianoPlusWaterfall._log.fine(
                    "noteOff: $noteOff - (in example widget 1 handler) isPlaying:${state.isKeyDown}");
                // notesOffController.add(noteOff);
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
          BlocListener<SoundServiceBloc, SoundServiceState>(
            listener: (context, state) {
              switch (state.status) {
                case SoundServiceStatus.initial:
                  break;
                case SoundServiceStatus.running:
                  Set<int> notesOn = {};
                  state.noteOn.forEach((key, element) {
                    notesOnController.add(element);
                    notesOn.add(element);
                  });
                  state.noteOff.forEach((key, element) {
                    notesOffController.add(element);
                    notesOn.remove(element);
                  });
                  context.read<SimplePianoBloc>().add(
                    SimplePianoEvent.pitchFromExternal(
                      pitches: state.notesPlaying[0]!,
                    ),
                  );
                  break;
                case SoundServiceStatus.stopped:
                  break;
                case SoundServiceStatus.error:
                  break;
              }
            },
          ),
        ],
        child: Scaffold(
          body: Center(
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blue,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  DebugWidget(),
                  TempoInput(),
                  Expanded(
                    flex: 1,
                    child: PianoWaterfall.keys49c(
                      notesOnStream: notesOnController.stream,
                      notesOffStream: notesOffController.stream,
                      mode: PianoWaterfallMode.bottomToTop,
                      onInit: () {
                        _log.fine("in onInit");
                        if (context.read<SoundServiceBloc>().state.status ==
                            SoundServiceStatus.initial) {
                          context.read<SoundServiceBloc>().add(
                                const SoundServiceEvent.start(),
                              );
                        }
                      },
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: KeyboardListenerWidget(
                      child: SoundPoolKeyListener(),
                    ),
                  ),
                  SimplePiano.keys49c(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  bool _isDialogShown = false;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!_isDialogShown) {
        _dialogBuilder();
        _isDialogShown = true;
      }
    });
  }

  Future<void> _dialogBuilder() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Basic dialog title'),
          content: const Text(
            'A dialog is a type of modal window that\n'
            'appears in front of app content to\n'
            'provide critical information, or prompt\n'
            'for a decision to be made.',
          ),
          actions: <Widget>[
            // TextButton(
            //   style: TextButton.styleFrom(
            //     textStyle: Theme.of(context).textTheme.labelLarge,
            //   ),
            //   child: const Text('Disable'),
            //   onPressed: () {
            //     Navigator.of(context).pop();
            //   },
            // ),
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: const Text('Enable'),
              onPressed: () {
                _log.fine("initializing sound service");
                context.read<SoundServiceBloc>().add(
                      const SoundServiceEvent.start(),
                    );
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  void dispose() {
    notesOnController.close();
    notesOffController.close();
    super.dispose();
  }
}
