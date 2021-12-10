import 'package:flutter/material.dart';

class CardSettingsTitleWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25, top: 15, right: 0, bottom: 0),
      child: Row (
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text('Card Settings',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 16,
            ),)
        ],
      ),
    );
  }
}