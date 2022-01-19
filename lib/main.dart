import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:interface_facebook/telas/Home.dart';

void main() {
  runApp(
      DevicePreview(
          builder: (context) => MaterialApp(
            title: "Facebook",
            debugShowCheckedModeBanner: false,

            builder: DevicePreview.appBuilder,
            locale: DevicePreview.locale(context),

            home: Home(),
          )
        ),
      );
}