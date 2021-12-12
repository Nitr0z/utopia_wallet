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
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(padding: EdgeInsets.only(top: 10.0)),
            marketPlaceTitle(),
            marketPlaceFilterWidget(),
            CryptoListMain('Bitcoin','BTC', 'assets/images/CryptoLogo/bitcoin.png', r'68560€', '+0.11%'),
            CryptoListMain('Ethereum','ETH', 'assets/images/CryptoLogo/eth.png', r'5728€', '+0.45%'),
            CryptoListMain('BNB','BNB', 'assets/images/CryptoLogo/bnb.png', r'1183€', '+0.23%'),
            CryptoListMain('TetherUS','USDT', 'assets/images/CryptoLogo/tether.png', r'0.99€', '+0.02%'),
            CryptoListMain('Solana','SOL', 'assets/images/CryptoLogo/solana.png', r'171.26€', '+0.84%'),
            CryptoListMain('Cardano','ADA', 'assets/images/CryptoLogo/cardano.png', r'1.34€', '+3.90%'),
            CryptoListMain('Polkadot','DOT', 'assets/images/CryptoLogo/polkadot.png', r'28.78€', '+4.66%'),
            CryptoListMain('Avalanche','AVAX', 'assets/images/CryptoLogo/avalanche.png', r'85.84€', '+3.29%'),
            CryptoListMain('Elrond','EGLD', 'assets/images/CryptoLogo/egld.png', r'216€', '+0.43%'),
            CryptoListMain('Oasis Network','ROSE', 'assets/images/CryptoLogo/rose.png', r'85.84€', '+13.94%'),
            CryptoListMain('The Sandbox','SAND', 'assets/images/CryptoLogo/sand.png', r'216€', '+6.74%'),
          ],
        ),
      ),
    );
  }
}