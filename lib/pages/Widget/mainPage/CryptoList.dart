import 'package:flutter/material.dart';



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
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(cryptoLogo,
                  width: 20,
                ),
                SizedBox(width: 10,),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(cryptoName),
                      Text(cryptoDesc,
                        style: TextStyle(
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