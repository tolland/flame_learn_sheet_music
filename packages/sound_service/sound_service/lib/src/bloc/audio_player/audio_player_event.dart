part of 'audio_player_bloc.dart';

@freezed
class AudioPlayerEvent with _$AudioPlayerEvent {
  const factory AudioPlayerEvent.play({
    @Default(0) int index,
  }) = AudioPlayerPlay;

  const factory AudioPlayerEvent.pause() = AudioPlayerPause;

  const factory AudioPlayerEvent.resume() = AudioPlayerResume;



  // const factory AudioPlayerEvent.togglePause() = AudioPlayerTogglePause;

  // const factory AudioPlayerEvent.stop() = AudioPlayerStop;

  const factory AudioPlayerEvent.next() = AudioPlayerNext;

  const factory AudioPlayerEvent.previous() = AudioPlayerPrevious;
}
