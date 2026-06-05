part of 'virtual_keyboard_status_bloc.dart';

@freezed
class VirtualKeyboardStatusState with _$VirtualKeyboardStatusState {
  const factory VirtualKeyboardStatusState({
    @Default({}) Set<LogicalKeyboardKey> logicalKeysPressed,
    @Default({}) Set<PhysicalKeyboardKey> physicalKeysPressed,
  }) = VirtualKeyboardStatusInitial;
}
