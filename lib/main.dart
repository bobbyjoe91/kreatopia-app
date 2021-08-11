import 'dart:async';

import 'package:flutter/material.dart';
import 'package:kreatopia/pages/landingPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kreatopia',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreen createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
      Duration(seconds: 2),
      () {
        Navigator.pushReplacement(
          context, 
          MaterialPageRoute(builder: (context) => LandingPage())
        );
      }
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFFFFE99A),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/logo.png',
                  width: 300,
                  height: 300
                ),
                Container(
                  margin: EdgeInsets.only(top: 30),
                  child: Text(
                    'K  R  E  A  T  O  P  I  A',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w100,
                      fontSize: 30
                    )
                  )
                )
              ],
            )
          ],
        )
      )
    );
  }
}

