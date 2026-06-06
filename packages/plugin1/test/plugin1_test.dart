import 'package:flutter_test/flutter_test.dart';
import 'package:plugin1/plugin1.dart';
import 'package:plugin1/plugin1_platform_interface.dart';
import 'package:plugin1/plugin1_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockPlugin1Platform
    with MockPlatformInterfaceMixin
    implements Plugin1Platform {
  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final Plugin1Platform initialPlatform = Plugin1Platform.instance;

  test('$MethodChannelPlugin1 is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelPlugin1>());
  });

  test('getPlatformVersion', () async {
    Plugin1 plugin1Plugin = Plugin1();
    MockPlugin1Platform fakePlatform = MockPlugin1Platform();
    Plugin1Platform.instance = fakePlatform;

    expect(await plugin1Plugin.getPlatformVersion(), '42');
  });
}
