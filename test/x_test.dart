import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:x/x.dart';

void main() {
  const MethodChannel channel = MethodChannel('x');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await X.platformVersion, '42');
  });
}
