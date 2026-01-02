import 'package:flutter/material.dart';
import 'package:todo_application/app.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => TodoApplication(), // Wrap your app
    ),
  );
}

