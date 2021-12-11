import 'package:flutter/material.dart';
import 'package:navbar/pages/Widget/projectsPage/projectsTitleWidget.dart';


class ProjectsPage extends StatefulWidget {
  ProjectsPage({Key key}) : super(key: key);

  @override
  _ProjectsPageState createState() =>  _ProjectsPageState();
}

class _ProjectsPageState extends State<ProjectsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xF5F6FA),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            projectsTitleWidget(),
          ],
        ),
      ),

    );
  }
}
