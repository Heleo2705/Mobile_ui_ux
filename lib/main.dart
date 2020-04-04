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

void main() {
//  response();
  runApp(myApp());
}

void response() async {
  Response response = await get(
      'http://localhost:9898/api/v1/bills/search/by-date-range?startDate=2020-04-02&endDate=2020-04-03');
  Map value = jsonDecode(response.body);
  print(value);
}

Widget myApp() {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      brightness: Brightness.dark,
      primaryColor: Colors.black,
      accentColor: Colors.black,
      fontFamily: 'Roboto',
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
    },
  );
}
