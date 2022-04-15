import Flutter
import UIKit

public class SwiftShimmerPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
        let factory = ShimmerViewFactory(messenger: registrar.messenger())
        registrar.register(factory, withId: "shimmerNative")
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
  }
}
