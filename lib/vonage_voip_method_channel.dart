import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'vonage_voip_platform_interface.dart';

/// An implementation of [VonageVoipPlatform] that uses method channels.
class MethodChannelVonageVoip extends VonageVoipPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('vonage_voip');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
