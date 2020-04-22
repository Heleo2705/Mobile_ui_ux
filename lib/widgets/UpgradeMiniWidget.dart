import 'package:flutter/material.dart';
import 'package:mobileuiux/widgets/BoxDecoration1.dart';

Widget upgradeMiniWidget(){
  return Container(
    decoration: box1(),
    padding: EdgeInsets.all(15),
    margin: EdgeInsets.all(5),
    child: Column(
      children: <Widget>[
        RichText(
          text: TextSpan(
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),

            children: <TextSpan>[
              TextSpan(text: 'Karnival Premium ',style: TextStyle(color: Color(0xffc39a1e),fontWeight: FontWeight.bold),),
              TextSpan(text: 'allows you to view realtime loyalty points, prescription cards, coupons, credit notes, etc',),
            ]
          ),
        ),
        SizedBox(height: 10,),
        InkWell(
          onTap: (){},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                'Complete your profile to ',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                'Upgrade ',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(Icons.arrow_forward_ios,color: Colors.black,size: 16,),
            ],
          ),
        )
      ],
    ),
  );
}