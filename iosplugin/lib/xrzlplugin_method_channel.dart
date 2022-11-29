import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'xrzlplugin_platform_interface.dart';

/// An implementation of [XrzlpluginPlatform] that uses method channels.
class MethodChannelXrzlplugin extends XrzlpluginPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('xrzlplugin');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
