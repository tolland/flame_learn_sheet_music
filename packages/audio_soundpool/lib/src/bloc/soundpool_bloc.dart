import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '../../generated/src/bloc/soundpool_bloc.freezed.dart';
part 'soundpool_event.dart';
part 'soundpool_state.dart';

class SoundpoolBloc extends Bloc<SoundpoolEvent, SoundpoolState> {
  SoundpoolBloc() : super(const SoundpoolState.initial()) {
    on<SoundpoolEvent>((events, emit) async {
      // TODO: implement event handler
    });
  }
}
