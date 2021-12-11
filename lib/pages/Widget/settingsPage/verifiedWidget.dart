import 'package:flutter/material.dart';


class verifiedWidget extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, top: 5, right: 10, bottom: 0),
      margin: EdgeInsets.only(left: 20, top: 0, right: 20, bottom: 10),

      child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Text('theopotier@orange.fr'),
              SizedBox(height: 5),
              Text('ID: 60650878', style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 12,
              ),),

            ],
          ),
        ],
      ),
    );
  }
}