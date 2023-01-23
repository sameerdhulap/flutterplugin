import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'pluginplatfrom_platform_interface.dart';

/// An implementation of [PluginplatfromPlatform] that uses method channels.
class MethodChannelPluginplatfrom extends PluginplatfromPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('pluginplatfrom');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
