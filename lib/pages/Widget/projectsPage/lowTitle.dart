import 'package:flutter/material.dart';

class lowTitle extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, top: 10, right: 0, bottom: 5),
      child: Row (
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text('Low Risk',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 16,
                color: Colors.green
            ),)
        ],
      ),
    );
  }
}