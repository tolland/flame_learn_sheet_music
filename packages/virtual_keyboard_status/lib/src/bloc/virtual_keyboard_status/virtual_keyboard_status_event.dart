part of 'virtual_keyboard_status_bloc.dart';

@freezed
class VirtualKeyboardStatusEvent with _$VirtualKeyboardStatusEvent {
  const factory VirtualKeyboardStatusEvent.started() = VirtualKeyboardStatusStarted;

  const factory VirtualKeyboardStatusEvent.keyDown({
    required Set<LogicalKeyboardKey> keysPressed,
    required Set<PhysicalKeyboardKey> physicalKeysPressed,
  }) = VirtualKeyboardStatusKeyDownEvent;

  const factory VirtualKeyboardStatusEvent.keyUp({
    required Set<LogicalKeyboardKey> keysPressed,
    required Set<PhysicalKeyboardKey> physicalKeysPressed,
  }) = VirtualKeyboardStatusKeyUpEvent;
}
