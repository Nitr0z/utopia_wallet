import 'package:flutter/material.dart';
import 'package:navbar/pages/Widget/walletPage/cardWidget.dart';
import 'package:navbar/pages/Widget/walletPage/myCardTitleWidget.dart';
import 'package:navbar/pages/Widget/walletPage/accountTitleWidget.dart';
import 'package:navbar/pages/Widget/walletPage/firstAccountWidget.dart';
import 'package:navbar/pages/Widget/walletPage/cardSettingsTitleWidget.dart';
import 'package:navbar/pages/Widget/walletPage/cardSettingsItemsWidget.dart';
import 'package:navbar/pages/Widget/walletPage/bottomBorderWidget.dart';

class WalletPage extends StatefulWidget {
  WalletPage({Key key}) : super(key: key);



  @override
  _WalletPageState createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xF5F6FA),
      body: Center(
    child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CardTitleWidget(),
            CardWidget(),
            AccountTitleWidget(),
            AccountWidget('Compte Courant','MR POTIER THEO ','+ 598,786.24€'),
            AccountWidget('Livret A','MR POTIER THEO ','+ 100,942.87€'),
            AccountWidget('Livret Jeune','MR POTIER THEO ','+ 56,524.00€'),
            AccountWidget('Compte Binance','MR POTIER THEO ','+ 999,999.99€'),
            CardSettingsTitleWidget(),
            cardSettingsItemWidget('assets/images/IconLogo/pin.png', 'Change PIN Code', 'assets/images/IconLogo/rightarrow.png'),
            bottomBorderWidget(),
            cardSettingsItemWidget('assets/images/IconLogo/blocked.png', 'Block Card', 'assets/images/IconLogo/rightarrow.png'),
            bottomBorderWidget(),
            cardSettingsItemWidget('assets/images/IconLogo/download.png', 'Download Statement', 'assets/images/IconLogo/rightarrow.png'),
            bottomBorderWidget(),
          ],
        ),
      ),
    );
  }
}

