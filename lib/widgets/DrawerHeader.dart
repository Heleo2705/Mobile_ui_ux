import 'package:flutter/material.dart';
import 'package:mobileuiux/classes/Item.dart';

class BuildDrawerHeader extends StatefulWidget {

  @override
  _BuildDrawerHeaderState createState() => _BuildDrawerHeaderState();
}

class _BuildDrawerHeaderState extends State<BuildDrawerHeader> {

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300.0,
      child: DrawerHeader(
        margin: EdgeInsets.all(0.0),
        padding: EdgeInsets.all(0.0),
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 50.0,
              ),
              CircleAvatar(
                backgroundImage:
                AssetImage('assets/images/avtar.png'),
                radius: 70.0,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'JHON DOE',
                style: TextStyle(
//                          color: Colors.white,
                    fontSize: 20),
              ),
              SizedBox(
                height: 40.0,
              ),
            ],
          ),
        ),
        decoration: BoxDecoration(color: Colors.black),
      ),
    );
  }
}
