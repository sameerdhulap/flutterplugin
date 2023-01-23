import 'package:flutter_test/flutter_test.dart';
import 'package:pluginplatfrom/pluginplatfrom.dart';
import 'package:pluginplatfrom/pluginplatfrom_platform_interface.dart';
import 'package:pluginplatfrom/pluginplatfrom_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockPluginplatfromPlatform
    with MockPlatformInterfaceMixin
    implements PluginplatfromPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final PluginplatfromPlatform initialPlatform = PluginplatfromPlatform.instance;

  test('$MethodChannelPluginplatfrom is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelPluginplatfrom>());
  });

  test('getPlatformVersion', () async {
    Pluginplatfrom pluginplatfromPlugin = Pluginplatfrom();
    MockPluginplatfromPlatform fakePlatform = MockPluginplatfromPlatform();
    PluginplatfromPlatform.instance = fakePlatform;

    expect(await pluginplatfromPlugin.getPlatformVersion(), '42');
  });
}
