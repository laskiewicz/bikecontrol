import 'package:flutter/foundation.dart';
import 'package:universal_ble/universal_ble.dart';

import 'package:prop/emulators/ble_definition.dart';

enum Di2ButtonState {
  released,
  shortPress,
  longPress,
}

/// Stub implementation of Di2Definition for prop_public.
/// The real implementation lives in the private prop submodule.
class Di2Definition extends BleDefinition {
  Di2Definition.standalone({required ValueNotifier<String> data});

  @override
  List<String> get serviceUUIDs => [];

  @override
  List<String> get advertiseServiceUUIDs => [];

  @override
  List<BleCharacteristic> getCharacteristics(String serviceUUID) => [];

  @override
  void onWriteRequest(String characteristicUUID, List<int> characteristicData) {}

  @override
  void onNotification(String characteristic, Uint8List bytes) {}

  void sendChannelStates(List<Di2ButtonState> states) {}
}
