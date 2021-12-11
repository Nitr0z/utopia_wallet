import 'package:flutter/material.dart';
import 'package:navbar/pages/Widget/mainPage/CryptoList.dart';
import 'package:navbar/pages/Widget/mainPage/marketPlaceTitleWidget.dart';
import 'package:navbar/pages/Widget/mainPage/marketPlaceFilterWidget.dart';

import '../constants.dart';


class MainPage extends StatefulWidget {
  MainPage({Key key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: secondaryColor,
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            color: textcolor,
            onPressed: (){},
          ),
          IconButton(
            icon: Icon(Icons.account_circle),
            color: textcolor,
            onPressed: (){},
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            marketPlaceTitle(),
            marketPlaceFilterWidget(),
            CryptoListMain('Bitcoin','BTC', 'assets/images/CryptoLogo/bitcoin.png', r'60000€', '+0.45%'),
            CryptoListMain('Ethereum','ETH', 'assets/images/CryptoLogo/ethereum.png', r'50000€', '+0.45%'),
            CryptoListMain('Litecoin','LTC', 'assets/images/CryptoLogo/litecoin.png', r'40000€', '+0.45%'),
            CryptoListMain('BNB','BNB', 'assets/images/CryptoLogo/bnb.png', r'30000€', '+0.45%'),
            CryptoListMain('TetherUS','THUS', 'assets/images/CryptoLogo/tether.png', r'20000€', '+0.45%'),
          ],
        ),
      ),

    );
  }
}