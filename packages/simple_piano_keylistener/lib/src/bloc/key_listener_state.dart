part of 'key_listener_bloc.dart';

@freezed
class KeyListenerState with _$KeyListenerState {
  const factory KeyListenerState({
    /// The keyDown event keys.
    @Default({}) Set<LogicalKeyboardKey> keysDownLogical,
    @Default({}) Set<PhysicalKeyboardKey> keysDownPhysical,
    /// The keyUp event keys.
    @Default({}) Set<LogicalKeyboardKey> keysUpLogical,
    @Default({}) Set<PhysicalKeyboardKey> keysUpPhysical,
    /// Keys that are held down through keyDown and keyUp events.
    @Default({}) Set<LogicalKeyboardKey> keysPressed,
    @Default({}) Set<PhysicalKeyboardKey> physicalKeysPressed,
  }) = KeyListenerStateInitial;
}
