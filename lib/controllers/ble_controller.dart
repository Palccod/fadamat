import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:permission_handler/permission_handler.dart';

class BleController extends ChangeNotifier {
  List<BluetoothDevice> foundDevices = [];
  BluetoothDevice? _device;
  BluetoothConnectionState _deviceState = BluetoothConnectionState.disconnected;

  bool get isConnected => _deviceState == BluetoothConnectionState.connected;

  Future<void> scanForDevices() async {
    // Request permissions
    await [
      Permission.bluetoothScan,
      Permission.bluetoothConnect,
      Permission.location,
    ].request();

    // Check if Bluetooth is on
    final state = await FlutterBluePlus.adapterState.first;
    if (state != BluetoothAdapterState.on) {
      await FlutterBluePlus.turnOn();
      await FlutterBluePlus.adapterState.firstWhere(
        (s) => s == BluetoothAdapterState.on,
      );
    }

    foundDevices.clear();
    FlutterBluePlus.startScan(timeout: Duration(seconds: 4));
    FlutterBluePlus.scanResults.listen((results) {
      for (var result in results) {
        if (!foundDevices.any((d) => d.remoteId == result.device.remoteId)) {
          foundDevices.add(result.device);
          notifyListeners();
        }
      }
    });
    await Future.delayed(Duration(seconds: 4));
    FlutterBluePlus.stopScan();
  }

  Future<void> connectToDevice(BluetoothDevice device) async {
    _device = device;
    await _device!.connect();
    _device!.connectionState.listen((state) {
      _deviceState = state;
      notifyListeners();
    });
  }

  Future<void> disconnect() async {
    await _device?.disconnect();
    _device = null;
    _deviceState = BluetoothConnectionState.disconnected;
    notifyListeners();
  }

  Future<void> sendCropAndSoil(String crop, String soil) async {
    // Format your data as needed for your BLE device
    final data = "$crop,$soil";
    // TODO: Write data to the BLE characteristic
    // Example:
    // await yourBleCharacteristic.write(utf8.encode(data));
  }
}
