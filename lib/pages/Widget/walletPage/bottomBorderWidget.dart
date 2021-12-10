import 'package:flutter/material.dart';
import 'package:numeric_keyboard/numeric_keyboard.dart';

class bottomBorderWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25, top: 0, right: 25, bottom: 0),
      decoration: BoxDecoration(
        border: Border (
          bottom: BorderSide(width: 1.5, color: Colors.black),
        ),
      ),
    );
  }
}