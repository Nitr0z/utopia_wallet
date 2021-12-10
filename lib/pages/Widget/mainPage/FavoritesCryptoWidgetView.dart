import 'package:flutter/material.dart';
import 'package:navbar/pages/Widget/mainPage/favoritesCryptoWidget.dart';

class FavoritesCryptoWidgetView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      height: 150,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
              child: FavoritesCryptoWidget('Bitcoin','BTC', 'assets/images/CryptoLogo/bitcoin.png', r'60000€', '+0.45%'),
          ),
          Container(
            child: FavoritesCryptoWidget('Ethereum','ETH', 'assets/images/CryptoLogo/ethereum.png', r'50000€', '+0.45%'),
          ),
          Container(
            child: FavoritesCryptoWidget('Litecoin','LTC', 'assets/images/CryptoLogo/litecoin.png', r'40000€', '+0.45%'),
          ),
        ],
      ),
    );
  }
}

