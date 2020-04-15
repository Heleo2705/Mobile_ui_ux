import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:mobileuiux/classes/userToken.dart';
import 'package:shared_preferences/shared_preferences.dart';
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

  Future<String> _getToken() async {
    SharedPreferences _sh = await SharedPreferences.getInstance();
    String _s = _sh.getString("accessToken");
    return _s;
  }

  checkPreviousToken() async {
    String _accessToken = await this._getToken();
    if(_accessToken==null)
    return false;
    // print(_accessToken);
    String url =
        'https://test.knvl.me/api/v1/bills/search/by-date-range?startDate=2020-04-01&endDate=2020-04-08';

    final response = await http.get(url, headers: {
      "Authorization": "Bearer ${_accessToken}",
      "Content-Type": " application/json",
      "Accept": "application/json"
    });
    print(response.statusCode);
    if(response.statusCode==200)
    {
      if(response.body==null)
      return false;
    }
    if (response.statusCode != 200) {
      return false;
    } else
      return true;
  }

  callforAuth(bool loading) async {
    loading = true;
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
      loading = false;
      notifyListeners();
      // print("Here  is verification ${u.accessToken}");
    }
  }
}
