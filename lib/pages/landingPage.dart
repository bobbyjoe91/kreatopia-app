import 'package:flutter/material.dart';
import '../components/artwork.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kreatopia")
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Artwork(),
            Artwork(),
            Artwork(),
            Artwork(),
            Artwork(),
            Artwork()
          ],
        ),
      )
    );
  }
}