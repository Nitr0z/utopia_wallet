import 'package:flutter/material.dart';
import 'package:navbar/pages/Widget/settingsPage/settingsListWidget.dart';
import 'package:navbar/pages/Widget/settingsPage/verifiedWidget.dart';
import 'package:navbar/pages/Widget/walletPage/cardSettingsTitleWidget.dart';
import 'package:navbar/pages/Widget/walletPage/cardSettingsItemsWidget.dart';
import 'package:navbar/pages/Widget/walletPage/bottomBorderWidget.dart';

import '../constants.dart';


class SettingsPage extends StatefulWidget {
  SettingsPage({Key key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            verifiedWidget(),
            bottomBorderWidget(),
            settingsListWidget('assets/images/IconLogo/taskcenter.png', 'Task Center', 'assets/images/IconLogo/rightarrow.png'),
            settingsListWidget('assets/images/IconLogo/id.png', 'My Referral ID', 'assets/images/IconLogo/rightarrow.png'),
            settingsListWidget('assets/images/IconLogo/gift.png', 'My Gifts', 'assets/images/IconLogo/rightarrow.png'),
            settingsListWidget('assets/images/IconLogo/notification.png', 'Notifications', 'assets/images/IconLogo/rightarrow.png'),
            settingsListWidget('assets/images/IconLogo/security.png', 'Security', 'assets/images/IconLogo/rightarrow.png'),
            settingsListWidget('assets/images/IconLogo/settings.png', 'Settings', 'assets/images/IconLogo/rightarrow.png'),
            settingsListWidget('assets/images/IconLogo/help.png', 'Help & Support', 'assets/images/IconLogo/rightarrow.png'),
            settingsListWidget('assets/images/IconLogo/share.png', 'Share The App', 'assets/images/IconLogo/rightarrow.png'),
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

