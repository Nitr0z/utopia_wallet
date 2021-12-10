import 'package:flutter/material.dart';

class favTitleWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, top: 0, right: 0, bottom: 0),
      child: Row (
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text('Favorites',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 16,
            ),)
        ],
      ),
    );
  }
}