import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  // final FlutterBlue flutterBlue = FlutterBlue.instance;
  final FlutterBluePlus blue = FlutterBluePlus();
  Future<List<BluetoothDevice>> scanDevices() async {
    List<BluetoothDevice> devices = [];
    await FlutterBluePlus.startScan(timeout: Duration(seconds: 10));
    FlutterBluePlus.scanResults.listen((results) {
      for (ScanResult result in results) {
        if (!devices.contains(result.device)) {
          devices.add(result.device);
        }
      }
    });
    await Future.delayed(Duration(seconds: 10));
    await FlutterBluePlus.stopScan();
    log(devices.toString());
    return devices;
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
        child: const Text('Hello'),
        onPressed: () {
          scanDevices();
        },
      )),
    );
  }
}
