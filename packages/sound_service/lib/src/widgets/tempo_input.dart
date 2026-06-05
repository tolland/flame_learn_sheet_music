import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logging/logging.dart';
import 'package:sound_service/sound_service.dart';
import 'package:simple_piano/simple_piano.dart';

class TempoInput extends StatelessWidget {
  static final _log = Logger('TempoInput');

  TempoInput({super.key});
  /// This is the style for the buttons in this example
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
        child: BlocBuilder<MetronomeCubit, MetronomeState>(
          builder: (context, state) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: style,
                  onPressed: () async {
                    _log.fine(
                        "state: ${context.read<MetronomeCubit>().state}");
                    context.read<MetronomeCubit>().toggle();
                  },
                  child: const Text('toggle metronome'),
                ),
                ElevatedButton(
                  style: style,
                  onPressed: () async {
                    _log.fine(
                        "state: ${context.read<MetronomeCubit>().state}");
                    context.read<MetronomeCubit>().toggleHalfbeats();
                  },
                  child: const Text('toggle eighth beats'),
                ),
                ElevatedButton(
                  style: style,
                  onPressed: () async {
                    _log.fine(
                        "state: ${context.read<MetronomeCubit>().state}");
                    context.read<MetronomeCubit>().toggleQuarterbeats();
                  },
                  child: const Text('toggle 16th beats'),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      context.read<MetronomeCubit>().decrementBpm();
                    },
                    child: const Icon(Icons.remove),
                  ),
                ),
                Expanded(
                  child: Text(
                    '${state.bpm}',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      context.read<MetronomeCubit>().incrementBpm();
                    },
                    child: const Icon(Icons.add),
                  ),
                ),
              ],
            );
          },
        )
    );
  }
}
