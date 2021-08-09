import 'package:flutter/material.dart';

class Story extends StatelessWidget {
  final datum;

  Story({ required this.datum });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Image.network(
            datum['img_link'],
            fit: BoxFit.fitWidth
          ),
          Container(
            padding: EdgeInsets.only(
              left: 15, 
              right: 15, 
              top: 12,
              bottom: 105
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  datum['title'],
                  style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w700
                  )
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      datum['creator_name'],
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xFFC4C4C4)
                      )
                    ),
                    Text(
                      datum['creator_id'],
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xFFC4C4C4)
                      )
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 24),
                  child: Text(
                    '\t${datum['description']}',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 13
                    )
                  )
                )
              ],
            )
          )
        ],
      )
    );
  }
}