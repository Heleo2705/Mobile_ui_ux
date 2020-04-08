import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:mobileuiux/classes/userToken.dart';
import '../apiurls.dart';
import 'package:http/http.dart' as http;

class verifyUser {
  String number;
  String countryCode;
  String otp;
  bool load;
  APIURLs a;

  verifyUser(
      {@required this.number, @required this.countryCode, @required this.otp}) {
    this.authApicall();
   
  }
  authApicall() async {
    load = await callforAuth();
  }

  callforAuth() async {
    bool _load = false;
    final _body = jsonEncode(
        {"login": "$number", "countryCode": "$countryCode", "otp": "$otp"});

    http.Response response = await http.post(
        "https://test.knvl.me/api/app/authenticate",
        body: _body,
        headers: {"Content-Type": "application/json"});

    if (response.statusCode == 200) {
      _load = true;
      Map _responseJson = jsonDecode(response.body);

      userToken u = await userToken.store(
          accessToken: _responseJson["access_token"],
          refreshToken: _responseJson['refresh_token']);

      print(u.accessToken);
      this.checkToken();
    }

    return _load;
  }

  void checkToken() async {
    String _accessToken = "null";
    String _refreshToken = "null";
   userToken u= await userToken.get(_accessToken, _refreshToken);
    print(_accessToken);
  }
}
