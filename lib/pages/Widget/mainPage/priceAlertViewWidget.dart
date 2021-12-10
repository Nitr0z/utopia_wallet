import 'package:flutter/material.dart';
import 'package:navbar/pages/Widget/mainPage/priceAlertWidget.dart';


class priceAlertViewWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, top: 25, right: 20, bottom: 25),
      margin: EdgeInsets.only(left: 5, top: 0, right: 5, bottom: 0),
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

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset('assets/images/IconLogo/increase.png',
                  width: 35,
                ),
                SizedBox(width: 15,),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      priceAlertWidget(),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 0,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Image.asset('assets/images/IconLogo/rightarrow.png',
                width: 20,
              ),
            ],
          ),
        ],
      ),
    );
  }
}