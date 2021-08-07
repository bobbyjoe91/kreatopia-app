import 'package:flutter/material.dart';

class Artwork extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 256,
      margin: EdgeInsets.symmetric(horizontal: 18),
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xFFFCD13A),
          width: 1
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(10)
        )
      ),
      child: InkWell(
        onTap: () => print('Tapped...'),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 156,
              child: ClipRRect(
                child: Image.network(
                  'https://res.cloudinary.com/lelestaticassets/image/upload/v1627955035/Dicoding%20Final%20Project/4459586_lujgnw.jpg',
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
                    'Teh Beautiful Spring',
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
                          'by @kevpow',
                          style: TextStyle(
                            color: Color(0xFFC4C4C4)
                          )
                        ),
                        Text(
                          'Sat, 14 Aug 2021',
                          style: TextStyle(
                            color: Color(0xFFC4C4C4)
                          )
                        ),
                      ]
                    )
                  ),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliq...',
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
    );
  }
}