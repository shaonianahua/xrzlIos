import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'xrzlplugin_method_channel.dart';

abstract class XrzlpluginPlatform extends PlatformInterface {
  /// Constructs a XrzlpluginPlatform.
  XrzlpluginPlatform() : super(token: _token);

  static final Object _token = Object();

  static XrzlpluginPlatform _instance = MethodChannelXrzlplugin();

  /// The default instance of [XrzlpluginPlatform] to use.
  ///
  /// Defaults to [MethodChannelXrzlplugin].
  static XrzlpluginPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [XrzlpluginPlatform] when
  /// they register themselves.
  static set instance(XrzlpluginPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
