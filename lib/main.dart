import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';


import 'Weather.dart';
// import 'aspect_ratio_example.dart';

void main() {
  runApp(const ExampleApp());
}

class ExampleApp extends StatelessWidget {
  const ExampleApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DevicePreview(
      tools: const [
        DeviceSection(),
      ],
      builder: (context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        useInheritedMediaQuery: true,
        builder: DevicePreview.appBuilder,
        locale: DevicePreview.locale(context),
        title: 'Responsive and adaptive UI in Flutter',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: WeatherPage(
          // backgroundColor: Colors.white,
          // appBar: AppBar(
          //   title: const Text('App Title'),
          // ),
          // body:WeatherPage(),
        ),
      ),
    );
  }
}