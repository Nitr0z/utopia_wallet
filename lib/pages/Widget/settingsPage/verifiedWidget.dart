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
              Text('th***@***.fr'),
              SizedBox(height: 5),
              Text('ID: 60650878', style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 12,
              ),),

            ],
          ),
          Container(
            padding: EdgeInsets.only(left: 15, top: 5, right: 15, bottom: 5),
            margin: EdgeInsets.only(left: 20, top: 15, right: 0, bottom: 0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(.5),
                  blurRadius: 20.0, // soften the shadow
                  spreadRadius: 0.0, //extend the shadow
                  offset: Offset(
                    5.0, // Move to right 10  horizontally
                    5.0, // Move to bottom 10 Vertically
                  ),
                )
              ],
            ),
            child: Row(
              children: [
                Text('Verified',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,)
                ),
                SizedBox(width: 10,),
                Image.asset('assets/images/IconLogo/verified.png',
                  width: 20,)
              ],
            ),
          ),
        ],
      ),
    );
  }
}