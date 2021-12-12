import 'package:flutter/material.dart';

import '../../constants.dart';
import 'chart.dart';
import 'chart_data.dart';

class ChartDetails extends StatelessWidget {
  const ChartDetails({Key key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Wallet Details",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: defaultPadding),
          Chart(),
          StorageInfoCard(
            title: "ROSE",
            amountcrypto: "4387,22€",
            numcrypto: "15 668",
          ),
          StorageInfoCard(
            title: "ETH",
            amountcrypto: "3984.69€",
            numcrypto: "0.97",
          ),
          StorageInfoCard(
            title: "EGLD",
            amountcrypto: "2176,22€",
            numcrypto: "8.46",
          ),
          StorageInfoCard(
            title: "BNB",
            amountcrypto: "2758,22€",
            numcrypto: "5.23",
          ),
          StorageInfoCard(
            title: "Divers",
            amountcrypto: "3198,37€",
            numcrypto: "0",
          ),
        ],
      ),
    );
  }
}
