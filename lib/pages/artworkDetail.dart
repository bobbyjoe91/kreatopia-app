import 'package:flutter/material.dart';

// pages
import 'package:kreatopia/pages/thankYou.dart';

// components
// import 'package:kreatopia/components/artwork.dart';
import 'package:kreatopia/components/story.dart';

class ArtworkDetail extends StatefulWidget {
  final artworkDatum;

  ArtworkDetail({ required this.artworkDatum });

  _ArtworkDetail createState() => _ArtworkDetail(artworkDatum: this.artworkDatum);
}

class _ArtworkDetail extends State<ArtworkDetail> {
  final artworkDatum;
  TextEditingController _controller = TextEditingController();

  _ArtworkDetail({ required this.artworkDatum });

  _donationChecker() {
    String valueString = _controller.text;
    if(valueString == '') {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Text('Please insert donation'),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text('OK')
              )
            ]
          );
        }
      );
    } else {
      int donationValue = int.parse(valueString);
      if(donationValue < 10000) {
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              content: Text('Please donate at least Rp10.000'),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text('OK')
                )
              ]
            );
          }
        );
      } else {
        Navigator.push(
          context, 
          MaterialPageRoute(
            builder: (context) => ThankYou(
              title: artworkDatum['title'], 
              authorId: artworkDatum['creator_id'], 
              donationValue: donationValue
            ))
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kreatopia")
      ),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Stack(
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
                        Row(
                          children: [
                            Text(
                              'Rp ',
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'Open Sans'
                              )
                            ),
                            Container(
                              width: 131, 
                              height: 24,
                              child: TextField(
                                // focusNode: _donation,
                                controller: _controller,
                                textAlign: TextAlign.center, 
                                decoration: InputDecoration(counterText: ''),
                                maxLength: 12
                              )
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 39,
                      width: 109,
                      child: ElevatedButton(
                        onPressed: _donationChecker, 
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
      )
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}