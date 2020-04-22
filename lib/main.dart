
import 'package:mobileuiux/pages/ProfilePage.dart';
import 'package:flutter/material.dart';
import 'package:mobileuiux/pages/home.dart';
import 'package:mobileuiux/pages/otp_screen.dart';
import 'package:mobileuiux/pages/tell_more.dart';
import 'package:mobileuiux/pages/walkthrough.dart';
import 'package:mobileuiux/pages/load.dart';
import 'package:mobileuiux/pages/billPage.dart';
import 'package:mobileuiux/pages/questions/q1.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:mobileuiux/pages/WidgetsTestingPage.dart';
import 'package:mobileuiux/pages/billPage2.dart';
void main() {
//  response();
  runApp(myApp());
}

Widget myApp() {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      brightness: Brightness.dark,
      primaryColor: Colors.black,
      accentColor: Colors.black,
      fontFamily: 'Montserrat',
    ),
    initialRoute: '/',
    routes: {
      '/': (context) => Load(),
      '/home': (context) => Home(),
      '/tellmore': (context) => TellMore(),
      '/walkthrough': (context) => WalkThrough(),
      '/otp': (context) => OtpScreen(),
      '/billPage': (context) => BillPage(),
      '/q1': (context) => Q1(),
      '/tester': (context) => WidgetTester(),
      '/profile': (context) => ProfilePage(),
      '/billpage2' : (context) => BillPage2(),
    },
  );
}
