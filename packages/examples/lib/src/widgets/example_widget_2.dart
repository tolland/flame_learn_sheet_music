import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logging/logging.dart';
import 'package:simple_piano/simple_piano.dart';

class DraggingKeysTest extends StatefulWidget {
  static final _log = Logger('DraggingKeysTest');

  DraggingKeysTest({super.key}) {
    _log.fine("DraggingKeysTest constructor");
  }

  @override
  State<DraggingKeysTest> createState() => _DraggingKeysTestState();
}

class _DraggingKeysTestState extends State<DraggingKeysTest> {
  static final _log = Logger('_DraggingKeysTestState');

  bool isWebInitialized = false;

  @override
  Widget build(BuildContext context) {
    _log.fine("calling build in ${hashCode}");
    final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

    //print("$noteOn()");

    return BlocProvider(
      create: (context) => SimplePianoBloc(),
      child: BlocConsumer<SimplePianoBloc, SimplePianoState>(
        listener: (context, state) {
          if(!state.isKeyDown && state.notesOn.isEmpty && state.notesOff.isEmpty && state.pressedKeys
              .isEmpty) {
            return;
          }
          _log.config("$state");
          if (!state.isKeyDown) {
            assert(state.notesOn.isEmpty);
            assert(state.pressedKeys.containsAll(state.notesOn));
            assert(state.pressedKeys.intersection(state.notesOff).isEmpty);
            assert(state.pressedKeys.intersection(state.hovered).isEmpty);
          }
          // for (var noteOn in state.notesOn) {
          //   _log.fine(
          //       "noteOn: $noteOn - (in example widget 2 handler) isplaying:${state.isPlaying} 111");
          // }
          // for (var noteOff in state.notesOff) {
          //   ExampleWidget2._log.fine(
          //       "noteOff: $noteOff - (in example widget 2 handler) isPlaying:${state.isPlaying}");
          // }
        },
        builder: (BuildContext context, SimplePianoState state) {
          return Scaffold(
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
                  children: [
                    ElevatedButton(
                      style: style,
                      onPressed: () async {
                        _log.fine(
                            "state: ${context.read<SimplePianoBloc>().state}");
                      },
                      child: const Text('show state of simple piano'),
                    ),
                    // TempoInput(),
                    const Expanded(child: Text("go away")),
                    SimplePiano.keys49c(),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
