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
      home: LandingPage(),
    );
  }
}

