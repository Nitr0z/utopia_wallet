import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FavoritesCryptoWidget extends StatelessWidget {

  String cryptoName;
  String cryptoDesc;
  String cryptoLogo;
  String cryptoPrice;
  String cryptoChange;

  FavoritesCryptoWidget(cryptoName,cryptoDesc,cryptoLogo,cryptoPrice,cryptoChange):cryptoName = cryptoName, cryptoDesc = cryptoDesc, cryptoLogo = cryptoLogo, cryptoPrice = cryptoPrice, cryptoChange = cryptoChange;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Container(
            width: 150,
            margin: EdgeInsets.only(left: 10, top: 10, right: 10, bottom: 10),
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
            padding: EdgeInsets.only(left: 20, top: 10, right: 20, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Image.asset(cryptoLogo,
                          width: 20,
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(cryptoName),
                            SizedBox(height: 5),
                            Text(cryptoDesc,
                                style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 12,
                                    color: Colors.grey
                                )
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(width: 45, height: 10,),
                    Text(cryptoPrice),
                    SizedBox(height: 5),
                    Text(cryptoChange,
                      style: TextStyle(color: Colors.green,
                      fontSize: 12
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}