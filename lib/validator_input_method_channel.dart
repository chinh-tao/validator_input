import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'validator_input_platform_interface.dart';

/// An implementation of [ValidatorInputPlatform] that uses method channels.
class MethodChannelValidatorInput extends ValidatorInputPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('validator_input');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
