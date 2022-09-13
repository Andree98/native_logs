import 'package:flutter_test/flutter_test.dart';
import 'package:native_logs/native_logs.dart';
import 'package:native_logs/native_logs_platform_interface.dart';
import 'package:native_logs/native_logs_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockNativeLogsPlatform
    with MockPlatformInterfaceMixin
    implements NativeLogsPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final NativeLogsPlatform initialPlatform = NativeLogsPlatform.instance;

  test('$MethodChannelNativeLogs is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelNativeLogs>());
  });

  test('getPlatformVersion', () async {
    NativeLogs nativeLogsPlugin = NativeLogs();
    MockNativeLogsPlatform fakePlatform = MockNativeLogsPlatform();
    NativeLogsPlatform.instance = fakePlatform;

    expect(await nativeLogsPlugin.getPlatformVersion(), '42');
  });
}
