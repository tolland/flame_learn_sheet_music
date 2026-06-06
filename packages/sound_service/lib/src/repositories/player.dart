import 'package:assets_audio_player_updated/assets_audio_player.dart';

abstract class IPlayer {
  Future<void> play({
    required int channel,
    required int pitch,
    required int velocity,
    required int duration,
  });

  void dispose();
}

class AssetsAudioPlayerService implements IPlayer {
  final assetsAudioPlayer;

  AssetsAudioPlayerService() : assetsAudioPlayer = AssetsAudioPlayer() {}

  @override
  Future<void> play({
    required int channel,
    required int pitch,
    required int velocity,
    required int duration,
  }) async {
    assetsAudioPlayer.open(
      Audio("assets/notes/A.mp3"),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
  }
}
