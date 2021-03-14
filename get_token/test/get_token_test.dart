import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_token/get_token.dart';

void main() {
  const MethodChannel channel = MethodChannel('get_token');

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
    expect(await GetToken.platformVersion, '42');
  });
}
