import 'package:flutter/material.dart';

class ThankYou extends StatelessWidget {
  final title;
  final authorId;
  final donationValue;

  ThankYou({ required this.title, this.authorId, this.donationValue });

  void _showFeedbackModal(ctx) {
    showModalBottomSheet(
      context: ctx, 
      builder: (BuildContext context) {
        return Container(
          height: 300,
          padding: EdgeInsets.symmetric(vertical: 20),
          decoration: BoxDecoration(
            color: Color(0xFFFFE99A),
            border: Border.all(
              color: Color(0xFFFCD13A),
              width: 3
            )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'How was \"${this.title}\" ?',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w700,
                  fontSize: 20
                ),
                textAlign: TextAlign.center,
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      child: Icon(
                        Icons.sentiment_dissatisfied_rounded,
                        color: Colors.red,
                        size: 70
                      ),
                      onTap: () {
                        Navigator.pop(ctx);
                        Navigator.pop(ctx);
                      }
                    ),
                    InkWell(
                      child: Icon(
                        Icons.sentiment_neutral_rounded,
                        color: Colors.black,
                        size: 70
                      ),
                      onTap: () {
                        Navigator.pop(ctx);
                        Navigator.pop(ctx);
                      }
                    ),
                    InkWell(
                      child: Icon(
                        Icons.sentiment_satisfied_rounded,
                        color: Colors.green,
                        size: 70
                      ),
                      onTap: () {
                        Navigator.pop(ctx);
                        Navigator.pop(ctx);
                      }
                    )
                  ],
                )
              ),
              Text(
                'Please give your feedback to go back to previous page.',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 16
                )
              )
            ],
          )
        );
      }
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kreatopia')
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              'assets/images/thankyou.jpg',
              width: 300,
              height: 300
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: Text(
                    'Designed by pch.vector / Freepik',
                    style: TextStyle(
                      fontFamily: 'Open Sans',
                      color: Color(0xFFC4C4C4),
                      fontSize: 13
                    )
                  )
                ),
                Text(
                  'Thank You!',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w700,
                    fontSize: 24
                  )
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: Text(
                    'for donating to ${this.authorId} for Rp${this.donationValue}',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 20
                    )
                  )
                ),
                SizedBox(
                  height: 39,
                  width: 109,
                  child: ElevatedButton(
                    onPressed: () => _showFeedbackModal(context), 
                    child: Text(
                      'OK',
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