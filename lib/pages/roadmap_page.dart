import 'package:flutter/material.dart';
import 'Widget/roadmapPage/roadmapTitleWidget.dart';


class RoadmapPage extends StatefulWidget {
  RoadmapPage({Key key}) : super(key: key);

  @override
  _RoadmapPageState createState() => _RoadmapPageState();
}

class _RoadmapPageState extends State<RoadmapPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xF5F6FA),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            roadmapTitleWidget(),
          ],
        ),
      ),

    );
  }
}

