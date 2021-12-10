import 'package:flutter/material.dart';
import 'package:draw_graph/draw_graph.dart';
import 'package:draw_graph/models/feature.dart';



class marketPlaceFilterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, top: 0, right: 20, bottom: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 10, top: 5, right: 10, bottom: 5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(.5),
                      blurRadius: 10.0,
                      spreadRadius: 1.0,
                    ),
                  ],
                ),
                child:  Text('All',
                  style: TextStyle(
                      fontSize: 12),
                ),
              ),
              SizedBox(width: 10,),
              Container(
                padding: EdgeInsets.only(left: 10, top: 5, right: 10, bottom: 5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(.5),
                      blurRadius: 10.0,
                      spreadRadius: 1.0,
                    ),
                  ],
                ),
                child:  Image.asset('assets/images/IconLogo/favorite.png', width: 13),

                ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(left: 10, top: 5, right: 10, bottom: 5),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(.5),
                  blurRadius: 10.0,
                  spreadRadius: 1.0,
                ),
              ],
            ),
            child:  Text('Cap. du marché',
              style: TextStyle(
                  fontSize: 12),
            ),
          ),


        ],
      ),


    );
  }
}
