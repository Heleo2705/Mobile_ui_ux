import 'package:flutter/material.dart';
import 'package:mobileuiux/widgets/BoxDecoration1.dart';

Widget socialMediaSharing({String name,String fbUrl,String twitterUrl, String instagramUrl}){
  return Container(
    decoration: box1(),
    padding: EdgeInsets.fromLTRB(15,25,15,20),
    margin: EdgeInsets.all(5),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(width: 5,),
            InkWell(
              onTap: (){},
              child: CircleAvatar(
                radius: 20,
                child: Image(
                  image: AssetImage('assets/images/fblogo.png'),
                ),
              ),
            ),
            SizedBox(width: 10,),
            InkWell(
              onTap: (){},
              child: CircleAvatar(
                radius: 20,
                child: Image(
                  image: AssetImage('assets/images/twitter_logo.png'),
                ),
              ),
            ),
            SizedBox(width: 10,),
            InkWell(
              onTap: (){},
              child: CircleAvatar(
                radius: 20,
                child: Image(
                  image: AssetImage('assets/images/instalogo.jpg'),
                ),
              ),
            )
          ],
        ),

        SizedBox(height: 15,),
        Text(
          'Follow '+name+' on your favoirite social media',
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        )

      ],
    ),
  );
}