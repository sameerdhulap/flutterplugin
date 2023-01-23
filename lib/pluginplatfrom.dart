
import 'pluginplatfrom_platform_interface.dart';

class Pluginplatfrom {
  Future<String?> getPlatformVersion() {
    return PluginplatfromPlatform.instance.getPlatformVersion();
  }
}
