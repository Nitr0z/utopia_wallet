import 'package:flutter/material.dart';



class logoutButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, top: 15, right: 20, bottom: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 75, top: 15, right: 75, bottom: 15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(.5),
                  blurRadius: 10.0,
                  spreadRadius: 1.0,
                ),
              ],
            ),
            child:  Text('Sign Out',
              style: TextStyle(
                  fontSize: 15),
            ),
          ),
        ],
      ),
    );
  }
}