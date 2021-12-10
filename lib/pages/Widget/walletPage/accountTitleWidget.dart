import 'package:flutter/material.dart';

class AccountTitleWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25, top: 0, right: 0, bottom: 5),
      child: Row (
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text('Accounts',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 18,
            ),)
        ],
      ),
    );
  }
}