import 'package:bloc/bloc.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'key_listener_event.dart';

part 'key_listener_state.dart';

part '../../generated/src/bloc/key_listener_bloc.freezed.dart';

class KeyListenerBloc extends Bloc<KeyListenerEvent, KeyListenerState> {
  KeyListenerBloc() : super(const KeyListenerState()) {
    on<KeyListenerEvent>((events, emit) async {
      await events.map(
        started: (event) async => await _started(event, emit),
        keyDown: (event) async => await _keyDown(event, emit),
        keyUp: (event) async => await _keyUp(event, emit),
      );
    });
  }

  _started(_KeyListenerStarted event, Emitter<KeyListenerState> emit) {
    print("got here");
  }

  _keyDown(_KeyDownEvent event, Emitter<KeyListenerState> emit) {
    var keys = state.keysPressed.toList();
    keys.add(event.event.logicalKey);
    var pkeys = state.physicalKeysPressed.toList();
    pkeys.add(event.event.physicalKey);

    if(event.event.logicalKey == LogicalKeyboardKey.shiftLeft || event.event.logicalKey == LogicalKeyboardKey.shiftRight) {
     // print("got a shift");
    }else {
      print("event : ${event.event}");
    }
    emit(state.copyWith(
      keysPressed: keys.toSet(),
      physicalKeysPressed: pkeys.toSet(),
      keysDownLogical: {event.event.logicalKey},
      keysDownPhysical: {event.event.physicalKey},
      keysUpLogical: {},
      keysUpPhysical: {},
    ));
  }

  _keyUp(_KeyUpEvent event, Emitter<KeyListenerState> emit) {
    var keys = state.keysPressed.toList();
    keys.remove(event.event.logicalKey);
    var pkeys = state.physicalKeysPressed.toList();
    pkeys.remove(event.event.physicalKey);
    emit(state.copyWith(
      keysPressed: keys.toSet(),
      physicalKeysPressed: pkeys.toSet(),
      keysDownLogical: {},
      keysDownPhysical: {},
      keysUpLogical: {event.event.logicalKey},
      keysUpPhysical: {event.event.physicalKey},
    ));
  }
}
