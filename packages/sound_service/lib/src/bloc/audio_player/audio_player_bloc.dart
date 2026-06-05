import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logging/logging.dart';

import '../../managers/track_timer.dart';
import '../../models/models.dart';
import '../../repositories/playlist_repository.dart';

part 'audio_player_event.dart';

part 'audio_player_state.dart';

part '../../../generated/src/bloc/audio_player/audio_player_bloc.freezed.dart';

class AudioPlayerBloc extends Bloc<AudioPlayerEvent, AudioPlayerState> {
  static final _log = Logger('AudioPlayerBloc');

  final IPlaylistRepository playlistRepository;
  final TrackTimer trackTimer;

  AudioPlayerBloc({
    required this.playlistRepository,
    required this.trackTimer,
  }) : super(const AudioPlayerState()) {
    on<AudioPlayerEvent>((events, emit) async {
      await events.map(
        play: (event) async => await _play(event, emit),
        pause: (_) async => await _pause(emit),
        resume: (_) async => await _resume(emit),
        next: (_) async => await _next(emit),
        previous: (_) async => await _previous(emit),
      );
    });
  }

  _play(AudioPlayerPlay event, Emitter<AudioPlayerState> emit) async {
    if (state.playlist.tracks.isEmpty) {
      emit(state.copyWith(status: PlayerStatus.loading));

      final playList = await playlistRepository.getPlaylist();
      emit(state.copyWith(playlist: playList));
    }

    final currentTrack = state.playlist.tracks[event.index];

    trackTimer.setTrackDuration(duration: currentTrack.duration);

    emit(state.copyWith(
      status: PlayerStatus.playing,
      currentTrackIndex: event.index,
      currentTime: Duration.zero,
    ));
  }

  _pause(Emitter<AudioPlayerState> emit) {
    trackTimer.pause();

    emit(state.copyWith(
      status: PlayerStatus.paused,
      currentTime: trackTimer.passedTime(trackDuration: currentTrack.duration),
    ));
  }

  _resume(Emitter<AudioPlayerState> emit) {
    trackTimer.resume();

    emit(state.copyWith(
      status: PlayerStatus.playing,
      currentTime: trackTimer.passedTime(trackDuration: currentTrack.duration),
    ));
  }

  _stop(Emitter<AudioPlayerState> emit) {
    trackTimer.stop();
    emit(state.copyWith(status: PlayerStatus.stopped));
  }

  Future<void> _next(Emitter<AudioPlayerState> emit) async {
    if (state.status != PlayerStatus.stopped) {
      if (currentTrackIndex < state.playlist.tracks.length - 1) {
        var nextIndex = currentTrackIndex + 1;
        emit(state.copyWith(status: PlayerStatus.loading));
        // Fake loading to demonstrate the loading state
        await Future.delayed(const Duration(milliseconds: 200))
            .then((_) => add(AudioPlayerEvent.play(index: nextIndex)));
      } else {
        // If we are at the end of the playlist, stop the music
        _stop(emit);
      }
    }
  }

  Future<void> _previous(Emitter<AudioPlayerState> emit) async {
    if (currentTrackIndex > 0) {
      int previousIndex = currentTrackIndex - 1;
      emit(state.copyWith(status: PlayerStatus.loading));
      // Fake loading to demonstrate the loading state
      await Future.delayed(const Duration(milliseconds: 200))
          .then((_) => add(AudioPlayerEvent.play(index: previousIndex)));
    } else {
      // If we are at the first track, we just restart the current track
      add(AudioPlayerEvent.play(index: currentTrackIndex));
    }
  }

  int get currentTrackIndex => state.currentTrackIndex;

  Track get currentTrack => state.playlist.tracks[currentTrackIndex];
}
