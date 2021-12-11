import 'package:flutter/material.dart';

import '../../constants.dart';


class settingsListWidget extends StatelessWidget {

  String settingIcon;
  String settingName;
  String settingArrow;

  settingsListWidget(settingIcon,settingName,settingArrow): settingIcon = settingIcon, settingName = settingName, settingArrow= settingArrow;


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 30, top: 17, right: 20, bottom: 0),
      child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                child: Image.asset(settingIcon, color: primaryColor,
                  width: 25,
                ),
              ),
              SizedBox(width: 10,),
              Container(
                child: Text(settingName,
                  style: TextStyle(color: textcolor,
                    fontWeight: FontWeight.w500,
                    fontSize: 13),

                ),
              ),
            ],
          ),
          Image.asset(settingArrow, color: iconcolor,
            width: 13,
          ),
        ],
      ),
    );
  }
}