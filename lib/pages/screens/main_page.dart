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
            Padding(padding: EdgeInsets.only(top: 10.0)),
            marketPlaceTitle(),
            marketPlaceFilterWidget(),
            CryptoListMain('Bitcoin','BTC', 'assets/images/CryptoLogo/bitcoin.png', r'68560€', '+0.11%'),
            CryptoListMain('Ethereum','ETH', 'assets/images/CryptoLogo/ethereum.png', r'5728€', '+0.45%'),
            CryptoListMain('Litecoin','LTC', 'assets/images/CryptoLogo/litecoin.png', r'216€', '+0.27%'),
            CryptoListMain('BNB','BNB', 'assets/images/CryptoLogo/bnb.png', r'1183€', '+0.23%'),
            CryptoListMain('TetherUS','THUS', 'assets/images/CryptoLogo/tether.png', r'0.99€', '+0.02%'),
          ],
        ),
      ),

    );
  }
}