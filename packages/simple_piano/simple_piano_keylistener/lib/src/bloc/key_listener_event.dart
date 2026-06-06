part of 'key_listener_bloc.dart';

@freezed
class KeyListenerEvent with _$KeyListenerEvent {
  const factory KeyListenerEvent.started() = _KeyListenerStarted;

  const factory KeyListenerEvent.keyDown({
    required RawKeyDownEvent event,
  }) = _KeyDownEvent;

  const factory KeyListenerEvent.keyUp({
    required RawKeyUpEvent event,
  }) = _KeyUpEvent;
}
