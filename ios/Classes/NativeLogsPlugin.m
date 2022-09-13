#import "NativeLogsPlugin.h"
#if __has_include(<native_logs/native_logs-Swift.h>)
#import <native_logs/native_logs-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "native_logs-Swift.h"
#endif

@implementation NativeLogsPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftNativeLogsPlugin registerWithRegistrar:registrar];
}
@end
