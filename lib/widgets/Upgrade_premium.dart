import 'package:flutter/material.dart';

class buildUpgrade extends StatefulWidget {
  @override
  _buildUpgradeState createState() => _buildUpgradeState();
}

class _buildUpgradeState extends State<buildUpgrade> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Icon(
              Icons.lock,
              color: Colors.grey[350],
              size: 150.0,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'FEATURE LOCKED',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey[900],
                  fontWeight: FontWeight.w600
              ),
            ),
            SizedBox( height: 20,),
            Text(
              'Please upgrade your membership to view ',
              style: TextStyle(
                fontSize: 13,
                color: Colors.grey[600],
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 8,),
            Text(
              'loyalty cards',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: Colors.grey[600],
              ),
            ),

            SizedBox(height: 15,),
            FlatButton(
              onPressed: (){
                Navigator.pushNamed(context, '/q1');
              },
              disabledColor: Colors.grey,
              textColor: Colors.teal,
              child: Text(
                'UPGRADE',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  decoration: TextDecoration.underline,

                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
