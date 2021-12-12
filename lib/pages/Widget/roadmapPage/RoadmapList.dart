import 'package:flutter/material.dart';

import '../../constants.dart';



class RoadmapListMain extends StatelessWidget {

  String ProjectName;
  String ProjectDesc;

  RoadmapListMain(ProjectName, ProjectDesc):ProjectName = ProjectName, ProjectDesc = ProjectDesc;


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, top: 0, right: 10, bottom: 10),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.circular(10),
      ),

      child: Row(
        children: <Widget>[
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 20),
                Container(
                  margin: EdgeInsets.only(left: 0, top: 5, right: 0, bottom: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(ProjectName),
                      Text(ProjectDesc,
                        style: TextStyle(color: iconcolor,
                          fontWeight: FontWeight.w300,
                          fontSize: 15,
                        ),),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}