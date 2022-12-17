import 'dart:async';
import 'package:flutter/material.dart';
import 'LoginScreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 5),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => LoginScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(80.0),
      decoration: const BoxDecoration(
      shape: BoxShape.circle,
      gradient: LinearGradient(
          colors: [Colors.pink, Colors.deepOrangeAccent, Colors.orange])),
      child: Image.asset("assets/images/logo_white.png",
      height: 50, width: 50),
    );
  }
}
