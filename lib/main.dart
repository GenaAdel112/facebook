import 'package:facebook_task2/Facebook/Login_Screen.dart';
import 'package:facebook_task2/Home_Screen.dart';
import 'package:flutter/material.dart';
import 'Facebook/Splash_Screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashFaceBook(),
      debugShowCheckedModeBanner: false,
    );
  }
}