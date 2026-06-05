import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:sound_service/sound_service.dart';
import 'package:soundpool/soundpool.dart';
import 'package:flutter/services.dart';
import 'package:flutter/foundation.dart';
import 'platform_options.dart';

class SimpleApp extends StatefulWidget {
  final Soundpool pool;
  final ValueSetter<SoundpoolOptions> onOptionsChange;

  SimpleApp({
    Key? key,
    required this.pool,
    required this.onOptionsChange,
  }) : super(key: key);

  @override
  _SimpleAppState createState() => _SimpleAppState();
}

class _SimpleAppState extends State<SimpleApp> {
  int? _alarmSoundStreamId;
  int _cheeringStreamId = -1;

  Map<String, int> _soundIds = {};
  Map<int,int> _pitch2SoundId = {};

  String get _cheeringUrl => kIsWeb
      ? 'c-c-1.mp3'
      : 'https://raw.githubusercontent.com/ukasz123/soundpool/feature/web_support/example/web/c-c-1.mp3';

  Soundpool get _soundpool => widget.pool;

  void initState() {
    super.initState();

    _loadSounds();
  }

  void _loadSounds() {


    List<int>.generate(49, (i) => i + 1).forEach((element) async {
       int pitch = element + 36;
       print("element: $pitch");
       String note = Piano88Leethring.pianoNotes[pitch]!;
       String path = 'packages/sound_service/assets/notes/$note.mp3';
       var asset1 = await rootBundle.load(path);
       var soundId = await _soundpool.load(asset1);
       _soundIds[path] = soundId;
       _pitch2SoundId[pitch] = soundId;
    });

    _soundsMap.forEach((key, value) async {
      var asset =
          await rootBundle.load("packages/audio_soundpool/assets/notes/$value");
      var soundId = await _soundpool.load(asset);
      //_soundsMap[key] = soundId.toString();
      _soundIds["packages/audio_soundpool/assets/notes/$value"] = soundId;
    });
  }

  // Future<void> _loadSounds() async {
  //   int soundId =
  //       await rootBundle.load("sounds/dices.m4a").then((ByteData soundData) {
  //     return pool.load(soundData);
  //   });
  // }

  @override
  void didUpdateWidget(SimpleApp oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.pool != widget.pool) {
      _loadSounds();
    }
  }

  double _volume = 0.5;
  double _rate = 1.0;
  late Future<int> _soundId;
  late Future<int> _cheeringId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () async {
                final newOptions = await Navigator.of(context).push<
                        SoundpoolOptions>(
                    MaterialPageRoute(builder: (context) => PlatformOptions()));
                if (newOptions != null) {
                  widget.onOptionsChange(newOptions);
                }
              },
              icon: Icon(
                Icons.access_alarms,
              ))
        ],
      ),
      body: Center(
        child: SizedBox(
          width: kIsWeb ? 450 : double.infinity,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Rolling dices'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: _playSound,
                    child: Text("Play"),
                  ),
                  SizedBox(width: 8),
                  ElevatedButton(
                    onPressed: _pauseSound,
                    child: Text("Pause"),
                  ),
                  SizedBox(width: 8),
                  ElevatedButton(
                    onPressed: _stopSound,
                    child: Text("Stop"),
                  ),
                ],
              ),
              SizedBox(height: 8),
              ElevatedButton(
                onPressed: _playCheering,
                child: Text("Play cheering"),
              ),
              SizedBox(height: 4),
              Text('Set rate '),
              Row(children: [
                Expanded(
                  child: Slider.adaptive(
                    min: 0.5,
                    max: 2.0,
                    value: _rate,
                    onChanged: (newRate) {
                      setState(() {
                        _rate = newRate;
                      });
                      _updateCheeringRate();
                    },
                  ),
                ),
                Text('${_rate.toStringAsFixed(3)}'),
              ]),
              SizedBox(height: 8.0),
              Text('Volume'),
              Slider.adaptive(
                  value: _volume,
                  onChanged: (newVolume) {
                    setState(() {
                      _volume = newVolume;
                    });
                    _updateVolume(newVolume);
                  }),
            ],
          ),
        ),
      ),
    );
  }

  Future<int> _loadSound() async {
    var asset = await rootBundle
        .load("packages/audio_soundpool/sounds/do-you-like-it.wav");
    return await _soundpool.load(asset);
  }

  Future<int> _loadCheering() async {
    return await _soundpool.loadUri(_cheeringUrl);
  }

  Future<void> _playSound() async {
    //var _alarmSound = await _soundId;
    var _num = _soundIds.randomKey();
    print("playing $_num - ${_soundIds[_num]}");
    _soundpool.setVolume(soundId: _soundIds[_num]!, volume: _volume);
    _alarmSoundStreamId =
        await _soundpool.play(_soundIds[_num] ??= 10);
  }

  Future<void> _pauseSound() async {
    if (_alarmSoundStreamId != null) {
      await _soundpool.pause(_alarmSoundStreamId!);
    }
  }

  Future<void> _stopSound() async {
    if (_alarmSoundStreamId != null) {
      await _soundpool.stop(_alarmSoundStreamId!);
    }
  }

  Future<void> _playCheering() async {
    var _sound = await _cheeringId;
    _cheeringStreamId = await _soundpool.play(
      _sound,
      rate: _rate,
    );
  }

  Future<void> _updateCheeringRate() async {
    if (_cheeringStreamId > 0) {
      await _soundpool.setRate(
          streamId: _cheeringStreamId, playbackRate: _rate);
    }
  }

  Future<void> _updateVolume(newVolume) async {
    // if (_alarmSound >= 0){
    var _cheeringSound = await _cheeringId;
    _soundpool.setVolume(soundId: _cheeringSound, volume: newVolume);
    // }
  }

  static const Map<String, String> _soundsMap = {
    "A0": 'A0.mp3',
    "A1": 'A1.mp3',
    "A2": 'A2.mp3',
    "A3": 'A3.mp3',
    "A4": 'A4.mp3',
    "C4": 'C4.mp3',
    "C5": 'C5.mp3',
    "C6": 'C6.mp3',
    "C7": 'C7.mp3',
    "C8": 'C8.mp3',
  };
}

extension MapExt<T, K> on Map<T, K> {
  /// Maps each element and its index to a new value.
  T randomKey() => keys.elementAt(Random().nextInt(length));
}
