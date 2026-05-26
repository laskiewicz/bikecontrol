import 'package:flutter/foundation.dart';

import 'package:prop/emulators/transporter/transporter.dart';

/// Exposes a [BleDefinition] over native BLE peripheral mode.
///
/// Advertises the definition's services/characteristics, translates incoming
/// GATT requests into calls on the definition's hooks, and routes outgoing
/// notifications via [PeripheralManager].
class BluetoothTransporter extends Transporter {
  final String advertisementName;

  /// Notifies whether at least one remote client has subscribed to notifications.
  final ValueNotifier<bool> hasSubscribers = ValueNotifier(false);

  BluetoothTransporter({required super.definition, this.advertisementName = ''});

  /// Starts advertising and accepting connections.
  Future<void> start() async {}

  @override
  void sendCharacteristicNotification(String characteristicUUID, List<int> data, {int responseCode = 1}) {
    // TODO: implement sendCharacteristicNotification
  }

  @override
  void dispose() {
    hasSubscribers.dispose();
    super.dispose();
  }
}
