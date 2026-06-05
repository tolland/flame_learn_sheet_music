import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logging/logging.dart';

import '../../../sound_service.dart';

class MetronomeCoordinator
    extends BlocListener<MetronomeCubit, MetronomeState> {
  static final _log = Logger('MetronomeCoordinator');

  MetronomeCoordinator({super.key, super.child})
      : super(listener: (context, state) {
//    context.read<MetronomeCubit>().stream.listen((event) {
          switch (state.status) {
            case MetronomeStatus.initial:
              //context.read<MetronomeCubit>().start();
              break;
            case MetronomeStatus.running:
              switch (state.ticks % 4) {
                case 0:
                  // print(
                  //     "datetime now in mill ${DateTime.now().millisecondsSinceEpoch}");
                  if (state.quarterBeats) {
                    context.read<SoundServiceBloc>().add(
                          const SoundServiceEvent.noteOff(
                            number: 52,
                            velocity: 15,
                            channel: 1,
                          ),
                        );
                  }

                  context.read<SoundServiceBloc>().add(
                        const SoundServiceEvent.noteOn(
                          number: 50,
                          velocity: 60,
                          channel: 1,
                        ),
                      );
                case 1:
                  print(
                      "datetime now in mill ${DateTime.now().millisecondsSinceEpoch}");
                  if (state.quarterBeats) {
                    context.read<SoundServiceBloc>().add(
                          const SoundServiceEvent.noteOn(
                            number: 52,
                            velocity: 15,
                            channel: 1,
                          ),
                        );
                  }
                case 2:
                  if (state.quarterBeats) {
                    context.read<SoundServiceBloc>().add(
                          const SoundServiceEvent.noteOff(
                            number: 52,
                            velocity: 15,
                            channel: 1,
                          ),
                        );
                  }
                  context.read<SoundServiceBloc>().add(
                        const SoundServiceEvent.noteOff(
                          number: 50,
                          velocity: 60,
                          channel: 1,
                        ),
                      );
                  if (state.halfBeats) {
                    context.read<SoundServiceBloc>().add(
                          const SoundServiceEvent.noteOn(
                            number: 51,
                            velocity: 20,
                            channel: 1,
                          ),
                        );
                  }

                case 3:
                  if (state.halfBeats) {
                    context.read<SoundServiceBloc>().add(
                          const SoundServiceEvent.noteOff(
                            number: 51,
                            velocity: 15,
                            channel: 1,
                          ),
                        );
                  }
                  if (state.quarterBeats) {
                    context.read<SoundServiceBloc>().add(
                          const SoundServiceEvent.noteOn(
                            number: 52,
                            velocity: 60,
                            channel: 1,
                          ),
                        );
                  }
                default:
                  break;
              }

              break;
            case MetronomeStatus.stopped:
              break;
            case MetronomeStatus.error:
              break;
            default:
              break;
          }
        });
}
