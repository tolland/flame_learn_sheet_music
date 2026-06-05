import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../sound_service.dart';

class SoundServiceCoordinator
    extends BlocListener<SoundServiceBloc, SoundServiceState> {


  SoundServiceCoordinator({super.key, super.child})
      : super(listener: (context, state) {
          //print("in the bloc listener for sound service");
          // if (state.status == SoundServiceStatus.initial) {
          //   context
          //       .read<SoundServiceBloc>()
          //       .add(const SoundServiceEvent.start());
          // }
          switch (state.status) {
            case SoundServiceStatus.initial:
              break;
            case SoundServiceStatus.running:
              break;
            case SoundServiceStatus.stopped:
              break;
            case SoundServiceStatus.error:
              break;
          }
        });
}
