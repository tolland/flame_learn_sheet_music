import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_midi_command/flutter_midi_command.dart';

class MyMidiInput extends StatefulWidget {
  const MyMidiInput({super.key});

  @override
  State<MyMidiInput> createState() => _MyMidiInputState();
}

class _MyMidiInputState extends State<MyMidiInput> {



  StreamSubscription<String>? _setupSubscription;
  final MidiCommand _midiCommand = MidiCommand();


  @override
  Widget build(BuildContext context) {

    // print(MidiCommand().devices);

    return const Placeholder();
  }

  @override
  void initState() {
    super.initState();
    _setupSubscription = _midiCommand.onMidiSetupChanged?.listen((data) async {
      if (kDebugMode) {
        print("setup changed $data");
      }
      setState(() {});
    });
  }
}
