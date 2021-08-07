import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'dart:convert';

// components
import '../components/artwork.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPage createState() => _LandingPage();
}
class _LandingPage extends State<LandingPage> {
  // const [artworkDataList, setArtworkDataList] = useState([])
  var _artworkDataList = [];

  Future<void> readJson() async {
    String response = await rootBundle.loadString('assets/data/artwork.json');
    var data = await json.decode(response);

    setState(() => _artworkDataList = data);
  }

  @override
  void initState() {
    readJson(); // read json data
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kreatopia")
      ),
      body: ListView.separated(
        itemCount: _artworkDataList.length,
        separatorBuilder: (BuildContext context, int index) {
          return Container(
            height: 30
          );
        },
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.only(
              top: (index == 0) ? 30 : 0
            ),
            child: Artwork(
              artworkData: _artworkDataList[index]
            )
          );
        }
      )
    );
  }
}