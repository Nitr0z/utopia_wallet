import 'package:flutter/material.dart';

class homeTitleWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 0, top: 40, right: 0, bottom: 0),
      child: Row (
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Home',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 18,
            ),)
        ],
      ),
    );
  }
}