// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter_blue_plus/flutter_blue_plus.dart';

Future<List<BTDeviceStruct>> findDevices() async {
  //initializing bluetooth instance
  final flutterBlue = FlutterBluePlus.instance;
  //creating list to hold all found devices
  List<BTDeviceStruct> devices = [];
  //listening for scan results and checking them to add to scanned device list
  flutterBlue.scanResults.listen((results) {
    List<ScanResult> scannedDevices = [];
    for (ScanResult r in results) {
      if (r.device.name.isNotEmpty) {
        scannedDevices.add(r);
      }
    }
    //sorting scanned devices based on signal strength
    scannedDevices.sort((a, b) => b.rssi.compareTo(a.rssi));
    devices.clear();
    //going through all scanned and checked devices and converting them into BTDeviceStruct objects and putting them into the device list
    scannedDevices.forEach((deviceResult) {
      devices.add(BTDeviceStruct(
        name: deviceResult.device.name,
        id: deviceResult.device.id.toString(),
        rssi: deviceResult.rssi,
      ));
    });
  });
  //checking if currently scanning, if not then start scanning
  final isScanning = flutterBlue.isScanningNow;
  if (!isScanning) {
    await flutterBlue.startScan(
      timeout: const Duration(seconds: 5),
    );
  }

  //returning scanned device list
  return devices;
}
