import 'package:flutter/material.dart';
import 'package:mobileuiux/widgets/DrawerHeader.dart';
import 'dart:math' as math;


Drawer buildDrawer(BuildContext context) {
  return Drawer(
      child: Container(
        color: Colors.black87,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            BuildDrawerHeader(), //Yaha pe meko bas user ka naam cahiye..thats it
            Divider(
              color: Colors.white38,
              thickness: 1,
            ),
            ListTile(
              leading: Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Icon(
                  Icons.person,
                  color: Colors.white38,
                  size: 30,
                ),
              ),
              title: Text(
                'PROFILE',
                style: TextStyle(
                  color: Colors.white38,
                  fontWeight: FontWeight.w300,
                  fontSize: 20,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Divider(
              color: Colors.white38,
              thickness: 1,
            ),
            ListTile(
              onTap: () {
                Navigator.pop(context);
              },
              leading: Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Transform.rotate(
                  angle: math.pi,
                  child: Icon(
                    Icons.share,
                    color: Colors.white38,
                    size: 30,
                  ),
                ),
              ),
              title: Text(
                'SHARE',
                style: TextStyle(
                  color: Colors.white38,
                  fontWeight: FontWeight.w300,
                  fontSize: 20,
                ),
              ),
            ),
            Divider(
              color: Colors.white38,
              thickness: 1,
            ),
            ListTile(
              onTap: () {
                Navigator.pop(context);
              },
              leading: Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Icon(
                  Icons.star,
                  color: Colors.white38,
                  size: 30,
                ),
              ),
              title: Text(
                'RATE APP',
                style: TextStyle(
                  color: Colors.white38,
                  fontWeight: FontWeight.w300,
                  fontSize: 20,
                ),
              ),
            ),
            Divider(
              color: Colors.white38,
              thickness: 1,
            ),
            ListTile(
              onTap: () {
                Navigator.pop(context);
              },
              leading: Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Icon(
                  Icons.lock_outline,
                  color: Colors.white38,
                  size: 30,
                ),
              ),
              title: Text(
                'TERMS & CONDITIONS',
                style: TextStyle(
                  color: Colors.white38,
                  fontWeight: FontWeight.w300,
                  fontSize: 20,
                ),
              ),
            ),
            Divider(
              color: Colors.white38,
              thickness: 1,
            ),

          ],
        ),
      )
  );
}
