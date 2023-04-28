import 'package:flutter_test/flutter_test.dart';
import 'package:validator_input/validator_input.dart';
import 'package:validator_input/validator_input_platform_interface.dart';
import 'package:validator_input/validator_input_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockValidatorInputPlatform
    with MockPlatformInterfaceMixin
    implements ValidatorInputPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final ValidatorInputPlatform initialPlatform = ValidatorInputPlatform.instance;

  test('$MethodChannelValidatorInput is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelValidatorInput>());
  });

  test('getPlatformVersion', () async {
    ValidatorInput validatorInputPlugin = ValidatorInput();
    MockValidatorInputPlatform fakePlatform = MockValidatorInputPlatform();
    ValidatorInputPlatform.instance = fakePlatform;

    expect(await validatorInputPlugin.getPlatformVersion(), '42');
  });
}
