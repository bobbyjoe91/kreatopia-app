import 'package:flutter/material.dart';

import '../components/story.dart';

class ArtworkDetail extends StatelessWidget {
  final artworkDatum;

  ArtworkDetail({ required this.artworkDatum });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kreatopia")
      ),
      body: Stack(
        children: [
          Story(datum: artworkDatum),
          Positioned(
            bottom: 0,
            width: MediaQuery.of(context).size.width,
            // left: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              height: 87,
              decoration: BoxDecoration(
                color: Color(0xFFFFE99A),
                border: Border.all(
                  color: Color(0xFFFCD13A),
                  width: 3
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(10)
                )
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Support the creator!",
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w700
                        )
                      ),
                      Text(
                        "Rp _________",
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Open Sans',
                        )
                      )
                    ],
                  ),
                  SizedBox(
                    height: 39,
                    width: 109,
                    child: ElevatedButton(
                      onPressed: () => print('Donated'), 
                      child: Text(
                        'Donate',
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w700
                        )
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        side: BorderSide(width: 3, color: Color(0xFFFCD13A)),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)
                        )
                      )
                    ),
                  )
                ]
              )
            )
          )
        ]
      )
    );
  }
}