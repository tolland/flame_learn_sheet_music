part of 'audio_player_bloc.dart';

enum PlayerStatus {
  initial,
  loading,
  playing,
  paused,
  stopped,
  error,
}

@freezed
class AudioPlayerState with _$AudioPlayerState {
  //const factory AudioPlayerState.initial() = _Initial;
  const factory AudioPlayerState({
    @Default(PlayerStatus.initial) PlayerStatus status,
    @Default(Playlist(name: '', tracks: [])) Playlist playlist,
    @Default(Duration.zero) Duration currentTime,
    @Default(0) int currentTrackIndex,
  }) = AudioPlayerStateInitial;
}
