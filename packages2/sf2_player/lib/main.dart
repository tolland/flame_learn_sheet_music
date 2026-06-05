
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_midi/flutter_midi.dart';


class Sf2Player extends StatefulWidget {
  const Sf2Player({super.key});

  @override
  State<Sf2Player> createState() => _Sf2PlayerState();
}

class _Sf2PlayerState extends State<Sf2Player> {

  void _play(int midi) {
    // if (kIsWeb) {
    //   // WebMidi.play(midi);
    // } else {
      _flutterMidi.playMidiNote(midi: midi);
    //}
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          ElevatedButton(
            child: Text('Play C'),
            onPressed: () {

              _play(60);

            },
          ),
        ],
      ),
    );
  }

  @override
  void initState() {
    load('assets/sf2/Piano.sf2');
    super.initState();
  }

  final _flutterMidi = FlutterMidi();

  void load(String asset) async {
    //FlutterMidi.unmute(); // Optionally Unmute
    ByteData _byte = await rootBundle.load(asset);
    _flutterMidi.prepare(sf2: _byte);
  }
}
