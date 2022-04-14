#import "ShimmerPlugin.h"
#if __has_include(<shimmer_plugin/shimmer_plugin-Swift.h>)
#import <shimmer_plugin/shimmer_plugin-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "shimmer_plugin-Swift.h"
#endif

@implementation ShimmerPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftShimmerPlugin registerWithRegistrar:registrar];
}
@end
