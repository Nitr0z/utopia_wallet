import 'package:flutter/material.dart';
import 'package:navbar/pages/Widget/settingsPage/settingsTitleWidget.dart';
import 'package:navbar/pages/Widget/settingsPage/logoutButtonWidget.dart';
import 'package:navbar/pages/Widget/settingsPage/settingsListWidget.dart';
import 'package:navbar/pages/Widget/settingsPage/verifiedWidget.dart';
import 'package:navbar/pages/Widget/walletPage/cardSettingsTitleWidget.dart';
import 'package:navbar/pages/Widget/walletPage/cardSettingsItemsWidget.dart';
import 'package:navbar/pages/Widget/walletPage/bottomBorderWidget.dart';


class SettingsPage extends StatefulWidget {
  SettingsPage({Key key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xF5F6FA),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            settingsTitleWidget(),
            verifiedWidget(),
            bottomBorderWidget(),
            settingsListWidget('assets/images/IconLogo/taskcenter.png', 'Task Center', 'assets/images/IconLogo/rightarrow.png'),
            settingsListWidget('assets/images/IconLogo/reward.png', 'Reward Center', 'assets/images/IconLogo/rightarrow.png'),
            settingsListWidget('assets/images/IconLogo/id.png', 'My Referral ID', 'assets/images/IconLogo/rightarrow.png'),
            settingsListWidget('assets/images/IconLogo/gift.png', 'My Gifts', 'assets/images/IconLogo/rightarrow.png'),
            settingsListWidget('assets/images/IconLogo/notification.png', 'Notifications', 'assets/images/IconLogo/rightarrow.png'),
            settingsListWidget('assets/images/IconLogo/paymentmethod.png', 'Payments Methods', 'assets/images/IconLogo/rightarrow.png'),
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
            logoutButtonWidget(),
          ],
        ),
      ),

    );
  }
}

