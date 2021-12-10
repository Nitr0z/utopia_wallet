import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          SizedBox(width: 10),
          Container(
            width: 250,
            child: Image.asset('assets/images/card1.png'),
          ),
          Container(
            width: 250,
            child: Image.asset('assets/images/card2.png'),
          ),
        ],
      ),
    );
  }
}