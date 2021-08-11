import 'package:flutter/material.dart';

// pages
import 'package:kreatopia/pages/artworkDetail.dart';

class Artwork extends StatelessWidget {
  final artworkData;

  Artwork({ required this.artworkData });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 256,
      margin: EdgeInsets.symmetric(horizontal: 18),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Color(0xFFFCD13A),
          width: 1
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(10)
        ),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.25),
            spreadRadius: 2,
            blurRadius: 4,
            offset: Offset(0, 4)
          )
        ]
      ),
      child: Material(
        shape: RoundedRectangleBorder(
          borderRadius:  BorderRadius.all(
            Radius.circular(10)
          )
        ),
        child: InkWell(
          onTap: () {
            Navigator.push(
              context, 
              MaterialPageRoute(builder: (context) => ArtworkDetail(artworkDatum: this.artworkData))
            );
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 156,
                child: ClipRRect(
                  child: Image.network(
                    artworkData['img_link'],
                    fit: BoxFit.fitWidth
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)
                  )
                ),
              ),
              Container( // text container
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 7),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      artworkData['title'],
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w700
                      )
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 7),
                      padding: EdgeInsets.only(top: 2),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'by ${artworkData['creator_id']}',
                            style: TextStyle(
                              color: Color(0xFFC4C4C4)
                            )
                          ),
                          Text(
                            artworkData['created_at'],
                            style: TextStyle(
                              color: Color(0xFFC4C4C4)
                            )
                          ),
                        ]
                      )
                    ),
                    Text(
                      artworkData['description'],
                      textAlign: TextAlign.justify,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontFamily: 'Open Sans',
                        fontSize: 12
                      )
                    )
                  ],
                )
              )
            ],
          )
      )
    ));
  }
}