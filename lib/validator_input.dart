
import 'validator_input_platform_interface.dart';

class ValidatorInput {
  Future<String?> getPlatformVersion() {
    return ValidatorInputPlatform.instance.getPlatformVersion();
  }
}
