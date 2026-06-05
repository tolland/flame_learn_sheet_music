import 'package:bloc/bloc.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'virtual_keyboard_status_event.dart';
part 'virtual_keyboard_status_state.dart';
part '../../../generated/src/bloc/virtual_keyboard_status/virtual_keyboard_status_bloc.freezed.dart';

class VirtualKeyboardStatusBloc extends Bloc<VirtualKeyboardStatusEvent, VirtualKeyboardStatusState> {
  VirtualKeyboardStatusBloc() : super(const VirtualKeyboardStatusState()) {
    on<VirtualKeyboardStatusEvent>((events, emit) async {
      await events.map(
        started: (event) async => await _started(event, emit),
        keyDown: (event) async => await _keyDown(event, emit),
        keyUp: (event) async => await _keyUp(event, emit),
      );
    });
  }

  _started(VirtualKeyboardStatusStarted event, Emitter<VirtualKeyboardStatusState> emit) {
    print("got here");
  }

  _keyDown(VirtualKeyboardStatusKeyDownEvent event, Emitter<VirtualKeyboardStatusState> emit) {
    print("handling key down in virtual keyboard status bloc event $event");
    // logicalKeysPressed: newLogKeys..addAll(event.keysPressed),
    // physicalKeysPressed: newPhysKeys..addAll(event.physicalKeysPressed),
    Set<LogicalKeyboardKey> newLogKeys = Set.from(event.keysPressed);
    Set<PhysicalKeyboardKey> newPhysKeys = Set.from(event.physicalKeysPressed);
    emit(state.copyWith(
      logicalKeysPressed: newLogKeys,
      physicalKeysPressed: newPhysKeys,
    ));
  }

  _keyUp(VirtualKeyboardStatusKeyUpEvent event, Emitter<VirtualKeyboardStatusState> emit) {
    print("handling key up in virtual keyboard status bloc");
    emit(state.copyWith(
      logicalKeysPressed: state.logicalKeysPressed..removeAll(event.keysPressed),
      physicalKeysPressed: state.physicalKeysPressed..removeAll(event.physicalKeysPressed),
    ));
  }

}
