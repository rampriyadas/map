import 'package:flutter/material.dart';

import 'homepage.dart';
import 'bluetoothpage.dart';
import 'test.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => const Test(),
      '/bluetooth': (context) => const BluetoothPage(),
    },
  ));
}
