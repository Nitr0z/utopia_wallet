import 'package:flutter/material.dart';
import 'package:navbar/pages/Widget/roadmapPage/RoadmapList.dart';

import '../constants.dart';


class RoadmapPage extends StatefulWidget {
  RoadmapPage({Key key}) : super(key: key);

  @override
  _RoadmapPageState createState() => _RoadmapPageState();
}

class _RoadmapPageState extends State<RoadmapPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RoadMap'),
        backgroundColor: secondaryColor,
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            color: textcolor,
            onPressed: (){},
          ),
          IconButton(
            icon: Icon(Icons.account_circle),
            color: textcolor,
            onPressed: (){},
          ),
        ],
      ),
      backgroundColor: Color(0xF5F6FA),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(padding: EdgeInsets.only(top: 10.0)),
            RoadmapListMain('10-12-2019', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam congue sem arcu, nec congue metus venenatis vitae.'),
            IconButton(
              icon: Icon(Icons.arrow_circle_down),
              color: textcolor,
              onPressed: (){},
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 5, right: 20, bottom: 5),
              color: secondaryColor,
                child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam congue sem arcu, nec congue metus venenatis vitae.'),
            ),
          ],
        ),
      ),

    );
  }
}

