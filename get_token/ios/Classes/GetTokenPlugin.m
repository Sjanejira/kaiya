#import "GetTokenPlugin.h"
#if __has_include(<get_token/get_token-Swift.h>)
#import <get_token/get_token-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "get_token-Swift.h"
#endif

@implementation GetTokenPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftGetTokenPlugin registerWithRegistrar:registrar];
}
@end
