import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:movie_app_flutter/sscreen/appmovie.dart';
import 'package:movie_app_flutter/widgets/content.dart';
import 'package:movie_app_flutter/widgets/header.dart';
import 'package:movie_app_flutter/widgets/trending.dart';
import 'package:tmdb_api/tmdb_api.dart';

void main() => runApp(
      DevicePreview(
        enabled: true,
        builder: (context) => MyApp(), // Wrap your app
      ),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(brightness: Brightness.dark, primaryColor: Colors.green),
    );
  }
}
