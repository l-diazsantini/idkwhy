// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter_blue_plus/flutter_blue_plus.dart';

Future<List<BTDeviceStruct>> getConnectedDevices() async {
  //initializing bluetooth instance
  final flutterBlue = FlutterBluePlus.instance;
  //retrieving connected devices
  final connectedDevices = await flutterBlue.connectedDevices;
  //making empty list to hold connected devices
  List<BTDeviceStruct> devices = [];
  //going through all devices in connected device list, checking connection and other parameters to add to device list
  for (int i = 0; i < connectedDevices.length; i++) {
    final deviceResult = connectedDevices[i];
    final deviceState = await deviceResult.state.first;
    if (deviceState == BluetoothDeviceState.connected) {
      final deviceRssi = await deviceResult.readRssi();
      //adding checked devies to final list
      devices.add(BTDeviceStruct(
        name: deviceResult.name,
        id: deviceResult.id.toString(),
        rssi: deviceRssi,
      ));
    }
  }
  return devices;
}
