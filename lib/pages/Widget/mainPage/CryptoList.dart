import 'package:flutter/material.dart';

import '../../constants.dart';



class CryptoListMain extends StatelessWidget {

  String cryptoName;
  String cryptoDesc;
  String cryptoLogo;
  String cryptoPrice;
  String cryptoChange;

  CryptoListMain(cryptoName,cryptoDesc,cryptoLogo,cryptoPrice,cryptoChange):cryptoName = cryptoName, cryptoDesc = cryptoDesc, cryptoLogo = cryptoLogo, cryptoPrice = cryptoPrice, cryptoChange = cryptoChange;


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, top: 0, right: 20, bottom: 10),
      decoration: BoxDecoration(
          color: secondaryColor,
        borderRadius: BorderRadius.circular(10),
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(cryptoLogo,
                  width: 25,
                ),
                SizedBox(width: 20,),
                Container(
                  margin: EdgeInsets.only(left: 0, top: 5, right: 0, bottom: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(cryptoName),
                      Text(cryptoDesc,
                        style: TextStyle(color: textcolor,
                          fontWeight: FontWeight.w300,
                          fontSize: 15,
                        ),),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 50,),


          SizedBox(width: 50,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(cryptoPrice,
              ),
              Text(cryptoChange,
                style: TextStyle(color: Colors.green,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}