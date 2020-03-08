import 'package:flutter/material.dart';

Container buildWalkthroughBackground() {
  return Container(
    child: Column(
      children: <Widget>[
        SizedBox(height: 100,),
        Text(
          'Set your default Bill',
          style: TextStyle(
            color: Colors.grey[800],
            fontSize: 25,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 40,),
        Text(
          'Choose your default bill category and get all\n',
          style: TextStyle(
            color: Colors.grey[600],
            fontSize: 15,
          ),
        ),
        Text(
          'your bills automatically delivered\n',
          style: TextStyle(
            color: Colors.grey[600],
            fontSize: 15,
          ),
        ),
        Image(
          image: AssetImage('assets/images/screen.png'),
          height: 500,
        )
      ],
    ),
  );
}