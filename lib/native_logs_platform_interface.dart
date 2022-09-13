import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'native_logs_method_channel.dart';

abstract class NativeLogsPlatform extends PlatformInterface {
  /// Constructs a NativeLogsPlatform.
  NativeLogsPlatform() : super(token: _token);

  static final Object _token = Object();

  static NativeLogsPlatform _instance = MethodChannelNativeLogs();

  /// The default instance of [NativeLogsPlatform] to use.
  ///
  /// Defaults to [MethodChannelNativeLogs].
  static NativeLogsPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [NativeLogsPlatform] when
  /// they register themselves.
  static set instance(NativeLogsPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
