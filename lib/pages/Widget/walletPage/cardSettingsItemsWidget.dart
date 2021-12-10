import 'package:flutter/material.dart';


class cardSettingsItemWidget extends StatelessWidget {

  String settingIcon;
  String settingName;
  String settingArrow;

  cardSettingsItemWidget(settingIcon,settingName,settingArrow): settingIcon = settingIcon, settingName = settingName, settingArrow= settingArrow;


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 30, top: 10, right: 20, bottom: 10),
      child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
      children: <Widget>[
          Container(
              child: Image.asset(settingIcon,
                width: 25,
                ),
              ),
          SizedBox(width: 10,),
          Container(
            child: Text(settingName,
              style: TextStyle(color: Colors.indigo[600],
              fontWeight: FontWeight.w400,
              fontSize: 13,),
            ),
          ),
            ],
          ),
          Image.asset(settingArrow,
            width: 13,
          ),
        ],
      ),
    );
  }
}