import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'plugin1_platform_interface.dart';

/// An implementation of [Plugin1Platform] that uses method channels.
class MethodChannelPlugin1 extends Plugin1Platform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('plugin1');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>(
      'getPlatformVersion',
    );
    return version;
  }
}
