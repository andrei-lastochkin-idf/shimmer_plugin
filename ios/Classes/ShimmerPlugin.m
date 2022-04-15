#import "ShimmerPlugin.h"
#if __has_include(<shimmer_plugin/shimmer_plugin-Swift.h>)
#import <shimmer_plugin/shimmer_plugin-Swift.h>
#else
#import "shimmer_plugin-Swift.h"
#endif

@implementation ShimmerPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftShimmerPlugin registerWithRegistrar:registrar];
}
@end
