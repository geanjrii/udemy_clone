import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:udemy_clone/app/app.dart';

void main() {
  runApp(DevicePreview(
    builder: (_) => const App(),
    enabled: false,
  ));
}
