#import "PluginplatfromPlugin.h"
#if __has_include(<pluginplatfrom/pluginplatfrom-Swift.h>)
#import <pluginplatfrom/pluginplatfrom-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "pluginplatfrom-Swift.h"
#endif

@implementation PluginplatfromPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftPluginplatfromPlugin registerWithRegistrar:registrar];
}
@end
