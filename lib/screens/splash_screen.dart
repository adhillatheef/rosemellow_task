import 'dart:async';

import 'package:flutter/material.dart';
import 'package:rosemellow_task/screens/menu_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    asyncMethod();
    super.initState();
  }

  asyncMethod() async {
    final navigator = Navigator.of(context);
    Timer(
      const Duration(seconds: 2),
          () async {
            navigator.pushReplacement(
              MaterialPageRoute(builder: (context) =>  MenuScreen()),
            );          },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xffEA0029),
              Color(0xff000000),
              Color(0xff000000),
            ],
          ),
        ),
      ),
    );
  }
}