import 'package:flutter/material.dart';
import 'package:uri_online_judge/src/pages/splash.dart';
import 'package:uri_online_judge/src/pages/page_1001.dart';
import 'package:uri_online_judge/src/pages/page_1009.dart';
import 'package:uri_online_judge/src/pages/page_1018.dart';
import 'package:uri_online_judge/src/pages/page_2344.dart';
import 'package:uri_online_judge/src/pages/page_3040.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primaryColor: Colors.red,
      backgroundColor: Colors.white,
    ),
    debugShowCheckedModeBanner: false,
    initialRoute: 'splash',
    routes: {
      'splash': (context) => SplashHome(),
      'page_1001': (context) => Page1001(),
      'page_1009': (context) => Page1009(),
      'page_1018': (context) => Page1018(),
      'page_2344': (context) => Page2344(),
      'page_3040': (context) => Page3040(),
    },
  ));
}
