import 'package:audio_audioplayers/audioplayer_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// @widgetbook.UseCase(
//   name: 'test sound service 3',
//   type: Column,
// )
Widget greenContainerUseCase3(BuildContext context) {
  AudioControllerPools audioController = context.read<AudioControllerPools>();

  return Container(
      child: Center(
    child: Column(
      children: [
        ElevatedButton(
          onPressed: () {
            // print("state: ${context.read<SoundServiceBloc>().state}");
            for (var i = 0; i < 10; i++) {
              Future.delayed(Duration(milliseconds: 50*i), () {
                audioController.playNote(
                  pitch: 60 + i,
                  velocity: 15,
                  channel: 0,
                );
              });
            }
            for (var i = 0; i < 10; i++) {
              Future.delayed(Duration(milliseconds: 50*(2*i)), () {
                audioController.playNote(
                  pitch: 60 + i,
                  velocity: 15,
                  channel: 0,
                );
              });
            }
            context.read<AudioControllerPools>().playNote(
                  pitch: 60,
                  velocity: 15,
                  channel: 0,
                );
          },
          child: const Text('Stop'),
        ),
      ],
    ),
  ));
}
