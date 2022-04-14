import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shimmer_plugin/shimmer_plugin.dart';

void main() {
  const MethodChannel channel = MethodChannel('shimmer_plugin');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await ShimmerPlugin.platformVersion, '42');
  });
}
