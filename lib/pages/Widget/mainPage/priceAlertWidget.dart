import 'package:flutter/material.dart';


class priceAlertWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Set Price Alert'),
          SizedBox(height: 5),
          Text('When price goes up or down you will get notified.',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              color: Colors.grey,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}