import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'pluginplatfrom_method_channel.dart';

abstract class PluginplatfromPlatform extends PlatformInterface {
  /// Constructs a PluginplatfromPlatform.
  PluginplatfromPlatform() : super(token: _token);

  static final Object _token = Object();

  static PluginplatfromPlatform _instance = MethodChannelPluginplatfrom();

  /// The default instance of [PluginplatfromPlatform] to use.
  ///
  /// Defaults to [MethodChannelPluginplatfrom].
  static PluginplatfromPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [PluginplatfromPlatform] when
  /// they register themselves.
  static set instance(PluginplatfromPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
