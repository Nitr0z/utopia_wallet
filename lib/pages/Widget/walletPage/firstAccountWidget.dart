import 'package:flutter/material.dart';


class AccountWidget extends StatelessWidget {

  String accountType;
  String accountName;
  String accountBalances;

  AccountWidget(accountType,accountName,accountBalances): accountType = accountType, accountName = accountName, accountBalances = accountBalances;


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, top: 0, right: 20, bottom: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(.5),
            blurRadius: 20.0, // soften the shadow
            spreadRadius: 0.0, //extend the shadow
            offset: Offset(
              5.0, // Move to right 10  horizontally
              5.0, // Move to bottom 10 Vertically
            ),
          )
        ],
      ),
      child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Text(accountType),
              SizedBox(height: 5),
              Text(accountName, style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 12,
              ),),
              SizedBox(height: 10,),
            ],
          ),
          SizedBox(width: 120,),
          Text(accountBalances,
            style: TextStyle(color: Colors.green,
              fontWeight: FontWeight.w400,)
          ),
        ],
      ),
    );
  }
}