
import 'native_logs_platform_interface.dart';

class NativeLogs {
  Future<String?> getPlatformVersion() {
    return NativeLogsPlatform.instance.getPlatformVersion();
  }
}
