import 'package:facebook_task2/Facebook/Login_Screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class SplashFaceBook extends StatefulWidget{
  @override
  State<SplashFaceBook> createState() => _SplashFaceBookState();
}
class _SplashFaceBookState extends State<SplashFaceBook> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => LoginScreen2(),
        ),
      );
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(padding:
          EdgeInsetsGeometry.symmetric(vertical: 26),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Spacer(),
                Center(
                  child: Image.asset(
                    'assets/images/facebook.png', width: 100, height: 100,
                  ),
                ),
                Spacer(),
                Text("From",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: Colors.grey,
                  ),),
                SizedBox(
                  height: 6,
                ),
                Image.asset(
                  'assets/images/Meta Logo.png', width: 100, height: 40,),


              ],
            ),
          )
      ),
    );
  }
}