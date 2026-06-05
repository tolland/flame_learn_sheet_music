import 'package:audio_soundpool/src/widgets/simple_app.dart';
import 'package:flutter/material.dart';
import 'package:soundpool/soundpool.dart';
import 'package:flutter/services.dart';
import 'package:flutter/foundation.dart';

class SoundPoolWidget extends StatefulWidget {
  const SoundPoolWidget({super.key});

  @override
  State<SoundPoolWidget> createState() => _SoundPoolWidgetState();
}

class _SoundPoolWidgetState extends State<SoundPoolWidget> {
  Soundpool? _pool;
  SoundpoolOptions _soundpoolOptions = SoundpoolOptions();

  @override
  void initState() {
    super.initState();
    if (!kIsWeb) {
      _initPool(_soundpoolOptions);
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_pool == null) {
      return Material(
        child: Center(
          child: ElevatedButton(
            onPressed: () => _initPool(_soundpoolOptions),
            child: Text("Init Soundpool"),
          ),
        ),
      );
    } else {
      return SimpleApp(
        pool: _pool!,
        onOptionsChange: _initPool,
      );
    }
  }

  void _initPool(SoundpoolOptions soundpoolOptions) {
    _pool?.dispose();
    setState(() {
      _soundpoolOptions = soundpoolOptions;
      _pool = Soundpool.fromOptions(options: _soundpoolOptions);
      print('pool updated: $_pool');
    });
  }
}
