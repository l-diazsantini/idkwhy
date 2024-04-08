// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter_blue_plus/flutter_blue_plus.dart';

Future<bool> connectDevice(BTDeviceStruct deviceInfo) async {
  //initializing bluetooth device
  final device = BluetoothDevice.fromId(deviceInfo.id, name: deviceInfo.name);
  //attempting to connect and checking for failure
  try {
    await device.connect();
  } catch (e) {
    print(e);
  }
  //tracking device writablility
  var hasWriteCharacteristic = false;
  final services = await device.discoverServices();
  for (BluetoothService service in services) {
    for (BluetoothCharacteristic characteristic in service.characteristics) {
      final isWrite = characteristic.properties.write;
      //checking if device is writable and if is setting variable to true
      if (isWrite) {
        debugPrint(
            'Found write characteristic: ${characteristic.uuid}, ${characteristic.properties}');
        hasWriteCharacteristic = true;
      }
    }
  }
  return hasWriteCharacteristic;
}
