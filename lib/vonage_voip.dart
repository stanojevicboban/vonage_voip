
import 'vonage_voip_platform_interface.dart';

class VonageVoip {
  Future<String?> getPlatformVersion() {
    return VonageVoipPlatform.instance.getPlatformVersion();
  }
}
