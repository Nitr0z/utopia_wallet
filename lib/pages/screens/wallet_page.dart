import 'package:flutter/material.dart';
import 'package:navbar/pages/Widget/walletPage/chart_info.dart';

import '../constants.dart';


class WalletPage extends StatefulWidget {
  WalletPage({Key key}) : super(key: key);



  @override
  _WalletPageState createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wallet'),
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
      backgroundColor: Color(0xF5F6FA),
      body: SingleChildScrollView(
    child: Column(
          children: [
            ChartDetails(),
          ],
        ),
      ),
    );
  }
}

