
import 'package:sound_service/src/models/models.dart';

class Playlist {
  final String name;
  final List<Track> tracks;

  const Playlist({
    required this.name,
    required this.tracks,
  });
}
