import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'validator_input_method_channel.dart';

abstract class ValidatorInputPlatform extends PlatformInterface {
  /// Constructs a ValidatorInputPlatform.
  ValidatorInputPlatform() : super(token: _token);

  static final Object _token = Object();

  static ValidatorInputPlatform _instance = MethodChannelValidatorInput();

  /// The default instance of [ValidatorInputPlatform] to use.
  ///
  /// Defaults to [MethodChannelValidatorInput].
  static ValidatorInputPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [ValidatorInputPlatform] when
  /// they register themselves.
  static set instance(ValidatorInputPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
