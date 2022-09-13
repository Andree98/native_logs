import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'native_logs_platform_interface.dart';

/// An implementation of [NativeLogsPlatform] that uses method channels.
class MethodChannelNativeLogs extends NativeLogsPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('native_logs');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
