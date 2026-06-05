import 'package:sound_service/src/constants.dart';
import 'package:sound_service/src/models/models.dart';

abstract class IPlaylistRepository {
  Future<Playlist> getPlaylist();
}

class PlaylistRepository implements IPlaylistRepository {
  @override
  Future<Playlist> getPlaylist() {
    return Future.delayed(
      const Duration(seconds: 1),
      () => popularSongs,
    );
  }
}
