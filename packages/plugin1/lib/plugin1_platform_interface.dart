import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'plugin1_method_channel.dart';

abstract class Plugin1Platform extends PlatformInterface {
  /// Constructs a Plugin1Platform.
  Plugin1Platform() : super(token: _token);

  static final Object _token = Object();

  static Plugin1Platform _instance = MethodChannelPlugin1();

  /// The default instance of [Plugin1Platform] to use.
  ///
  /// Defaults to [MethodChannelPlugin1].
  static Plugin1Platform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [Plugin1Platform] when
  /// they register themselves.
  static set instance(Plugin1Platform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
