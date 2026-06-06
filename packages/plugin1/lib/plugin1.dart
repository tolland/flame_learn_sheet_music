
import 'plugin1_platform_interface.dart';

class Plugin1 {
  Future<String?> getPlatformVersion() {
    return Plugin1Platform.instance.getPlatformVersion();
  }
}
