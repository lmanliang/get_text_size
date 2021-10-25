#import "GetTextSizePlugin.h"
#if __has_include(<get_text_size/get_text_size-Swift.h>)
#import <get_text_size/get_text_size-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "get_text_size-Swift.h"
#endif

@implementation GetTextSizePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftGetTextSizePlugin registerWithRegistrar:registrar];
}
@end
