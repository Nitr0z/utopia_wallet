import 'package:flutter/material.dart';

class marketPlaceTitle extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, top: 0, right: 0, bottom: 5),
      child: Row (
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text('Market Place',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 16,
            ),)
        ],
      ),
    );
  }
}