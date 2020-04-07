import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class userToken {
  String accessToken;
  String refreshToken;
  userToken({this.accessToken, this.refreshToken});
  storeToPref() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString("accessToken", accessToken);
    pref.setString("refreshToken", refreshToken);
  }

  getfromPref() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    accessToken = pref.getString("accessToken");
    refreshToken = pref.getString("refreshToken");
  }
}
