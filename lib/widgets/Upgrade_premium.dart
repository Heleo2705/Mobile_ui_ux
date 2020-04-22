import 'package:flutter/material.dart';

class BuildUpgrade extends StatefulWidget {
  @override
  _BuildUpgradeState createState() => _BuildUpgradeState();
}

class _BuildUpgradeState extends State<BuildUpgrade> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: <Widget>[
          SizedBox(height: 100,),
          Image(
            image: AssetImage('assets/images/upgrade_logo.png'),
            width: 120,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'KARNIVAL PREMIUM',
            style: TextStyle(
                fontSize: 22,
                color: Color(0xffc39a1e),
                fontWeight: FontWeight.w800
            ),
          ),
          SizedBox( height: 20,),
          Text(
            'Karnival Premium allows you to view realtime',
            style: TextStyle(
              fontSize: 13,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 8,),
          Text(
            'loyalty points, prescription cards, coupons, credit notes etc',
            softWrap: true,
            style: TextStyle(
              fontSize: 13,
              color: Colors.black,
            ),
          ),

          SizedBox(height: 15,),
          FlatButton(
            onPressed: (){
//                Navigator.pushNamed(context, '/q1');
            },

            disabledColor: Colors.black,
            textColor: Colors.black,
            child: RichText(
              text: TextSpan(
                style: TextStyle(
                  color: Colors.black,
                  decoration: TextDecoration.underline,
                  fontSize: 18,
                ),
                children: <TextSpan>[
                  TextSpan(text: 'Complete your profile to '),
                  TextSpan(text: 'Upgrade', style:TextStyle(fontWeight: FontWeight.bold))
                ]
              ),
            )
          ),
          Text(
            'Profile will be upgraded for next 12 months',
            style: TextStyle(
              color: Colors.grey[800],
              fontSize: 12,
            ),
          )
        ],
      ),
    );
  }
}
