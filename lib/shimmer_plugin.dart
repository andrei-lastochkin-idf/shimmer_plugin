
import 'dart:async';

import 'package:flutter/services.dart';

class ShimmerPlugin {
  static const MethodChannel _channel = MethodChannel('shimmer_plugin');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
