import 'package:flutter/material.dart';
import 'package:navbar/pages/Widget/projectsPage/ProjectsList.dart';

import '../constants.dart';


class ProjectsPage extends StatefulWidget {
  ProjectsPage({Key key}) : super(key: key);

  @override
  _ProjectsPageState createState() =>  _ProjectsPageState();
}

class _ProjectsPageState extends State<ProjectsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Projects'),
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
            ProjectsListMain('Bitcoin','BTC', r'68560€', '+0.11%'),
            ProjectsListMain('Ethereum','ETH', r'5728€', '+0.45%'),
          ],
        ),
      ),

    );
  }
}
