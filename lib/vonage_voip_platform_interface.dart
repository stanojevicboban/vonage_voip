import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'vonage_voip_method_channel.dart';

abstract class VonageVoipPlatform extends PlatformInterface {
  /// Constructs a VonageVoipPlatform.
  VonageVoipPlatform() : super(token: _token);

  static final Object _token = Object();

  static VonageVoipPlatform _instance = MethodChannelVonageVoip();

  /// The default instance of [VonageVoipPlatform] to use.
  ///
  /// Defaults to [MethodChannelVonageVoip].
  static VonageVoipPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [VonageVoipPlatform] when
  /// they register themselves.
  static set instance(VonageVoipPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
