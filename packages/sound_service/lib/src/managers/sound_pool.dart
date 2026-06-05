import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:soundpool/soundpool.dart';

class SoundPool {
  Soundpool? _pool;
  SoundpoolOptions _soundpoolOptions = SoundpoolOptions(
    streamType: StreamType.notification,
    maxStreams: 15,
  );

  // SoundPool() {
  //   _pool = Soundpool.fromOptions(options: _soundpoolOptions);
  //   int soundId = _loadSound();
  // }

  void loadSounds() async {
    print('pool updated: $_pool');
  }


  Future<int> _loadSound() async {
    var asset = await rootBundle.load("sounds/do-you-like-it.wav");
    return await _pool!.load(asset);
  }

}
