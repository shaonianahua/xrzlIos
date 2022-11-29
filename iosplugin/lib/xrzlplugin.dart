import 'package:flutter/services.dart';
import 'xrzlplugin_platform_interface.dart';

class Xrzlplugin {
  Future<String?> getPlatformVersion() {
    return XrzlpluginPlatform.instance.getPlatformVersion();
  }

  static const channel = MethodChannel("netmusic.com/audio_player");

  static Future<int> play() async {
    final result = await channel.invokeMethod("play");
    return result ?? 0;
  }
}
