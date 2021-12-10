import 'package:flutter/material.dart';
import 'package:navbar/pages/Widget/mainPage/CryptoList.dart';
import 'package:navbar/pages/Widget/mainPage/favTitleWidget.dart';
import 'package:navbar/pages/Widget/mainPage/homeTitleWidget.dart';
import 'package:navbar/pages/Widget/mainPage/FavoritesCryptoWidgetView.dart';
import 'package:navbar/pages/Widget/mainPage/marketPlaceTitleWidget.dart';
import 'package:navbar/pages/Widget/mainPage/marketPlaceFilterWidget.dart';
import 'package:navbar/pages/Widget/mainPage/priceAlertViewWidget.dart';


class MainPage extends StatefulWidget {
  MainPage({Key key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xF5F6FA),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            homeTitleWidget(),
            favTitleWidget(),
            FavoritesCryptoWidgetView(),
            marketPlaceTitle(),
            marketPlaceFilterWidget(),
            CryptoListMain('Bitcoin','BTC', 'assets/images/CryptoLogo/bitcoin.png', r'60000€', '+0.45%'),
            CryptoListMain('Ethereum','ETH', 'assets/images/CryptoLogo/ethereum.png', r'50000€', '+0.45%'),
            CryptoListMain('Litecoin','LTC', 'assets/images/CryptoLogo/litecoin.png', r'40000€', '+0.45%'),
            CryptoListMain('BNB','BNB', 'assets/images/CryptoLogo/bnb.png', r'30000€', '+0.45%'),
            CryptoListMain('TetherUS','THUS', 'assets/images/CryptoLogo/tether.png', r'20000€', '+0.45%'),
            priceAlertViewWidget(),
          ],
        ),
      ),

    );
  }
}