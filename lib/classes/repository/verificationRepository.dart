import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:mobileuiux/classes/userToken.dart';
import '../apiurls.dart';
import 'package:http/http.dart' as http;

class verifyUser extends ChangeNotifier {
  String number;
  String countryCode;
  String otp;
  bool loading = true;
  APIURLs a;

verifyUser();

  verifyUser.start(
      {@required this.number, @required this.countryCode, @required this.otp}) {
    // this.authApicall();
  }
  authApicall() async {
    await callforAuth(this.loading);
  }

  callforAuth(bool loading) async {
    loading=true;
    final _body = jsonEncode(
        {"login": "$number", "countryCode": "$countryCode", "otp": "$otp"});
    notifyListeners();
    http.Response response = await http.post(
        "https://test.knvl.me/api/app/authenticate",
        body: _body,
        headers: {"Content-Type": "application/json"});

    if (response.statusCode == 200) {
      Map _responseJson = jsonDecode(response.body);

      userToken u = await userToken.store(
          accessToken: _responseJson["access_token"],
          refreshToken: _responseJson['refresh_token']);
      loading=false;
      notifyListeners();
      print("Here  is verification ${u.accessToken}");
    }
  }
}
