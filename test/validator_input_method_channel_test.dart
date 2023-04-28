import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:validator_input/validator_input_method_channel.dart';

void main() {
  MethodChannelValidatorInput platform = MethodChannelValidatorInput();
  const MethodChannel channel = MethodChannel('validator_input');

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
    expect(await platform.getPlatformVersion(), '42');
  });
}
