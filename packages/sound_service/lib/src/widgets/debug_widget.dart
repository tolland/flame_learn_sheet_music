import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logging/logging.dart';
import 'package:sound_service/sound_service.dart';
import 'package:simple_piano/simple_piano.dart';

class DebugWidget extends StatelessWidget {
  static final _log = Logger('DebugWidget');

  DebugWidget({super.key});
  final ButtonStyle style =
  ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: Colors.grey.shade300,
            width: 1,
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              style: style,
              onPressed: () async {
                _log.fine("state: ${context.read<SoundServiceBloc>().state}");

              },
              child: const Text('show state of sound service'),
            ),
            ElevatedButton(
              style: style,
              onPressed: () async {
                _log.fine("state: ${context.read<SimplePianoBloc>().state}");

              },
              child: const Text('show state of simple piano'),
            ),
          ],
        ),
    );
  }
}
