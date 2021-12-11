import 'package:flutter/material.dart';

import '../../constants.dart';


class marketPlaceFilterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, top: 0, right: 20, bottom: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 10, top: 5, right: 10, bottom: 5),
                decoration: BoxDecoration(
                  color: secondaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child:  Text('All',
                  style: TextStyle(
                      fontSize: 12),
                ),
              ),
              SizedBox(width: 10,),
              Container(
                padding: EdgeInsets.only(left: 10, top: 7, right: 10, bottom: 7),
                decoration: BoxDecoration(
                  color: secondaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child:  Image.asset('assets/images/IconLogo/favorite.png', width: 13, color: textcolor,),

                ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(left: 10, top: 5, right: 10, bottom: 5),
            decoration: BoxDecoration(
              color: secondaryColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child:  Text('Cap. du marché',
              style: TextStyle(
                  fontSize: 12),
            ),
          ),


        ],
      ),


    );
  }
}
