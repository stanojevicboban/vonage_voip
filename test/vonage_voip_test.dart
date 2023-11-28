import 'package:flutter_test/flutter_test.dart';
import 'package:vonage_voip/vonage_voip.dart';
import 'package:vonage_voip/vonage_voip_platform_interface.dart';
import 'package:vonage_voip/vonage_voip_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockVonageVoipPlatform
    with MockPlatformInterfaceMixin
    implements VonageVoipPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final VonageVoipPlatform initialPlatform = VonageVoipPlatform.instance;

  test('$MethodChannelVonageVoip is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelVonageVoip>());
  });

  test('getPlatformVersion', () async {
    VonageVoip vonageVoipPlugin = VonageVoip();
    MockVonageVoipPlatform fakePlatform = MockVonageVoipPlatform();
    VonageVoipPlatform.instance = fakePlatform;

    expect(await vonageVoipPlugin.getPlatformVersion(), '42');
  });
}
