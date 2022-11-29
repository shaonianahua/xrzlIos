import 'package:flutter_test/flutter_test.dart';
import 'package:xrzlplugin/xrzlplugin.dart';
import 'package:xrzlplugin/xrzlplugin_platform_interface.dart';
import 'package:xrzlplugin/xrzlplugin_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockXrzlpluginPlatform
    with MockPlatformInterfaceMixin
    implements XrzlpluginPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final XrzlpluginPlatform initialPlatform = XrzlpluginPlatform.instance;

  test('$MethodChannelXrzlplugin is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelXrzlplugin>());
  });

  test('getPlatformVersion', () async {
    Xrzlplugin xrzlpluginPlugin = Xrzlplugin();
    MockXrzlpluginPlatform fakePlatform = MockXrzlpluginPlatform();
    XrzlpluginPlatform.instance = fakePlatform;

    expect(await xrzlpluginPlugin.getPlatformVersion(), '42');
  });
}
