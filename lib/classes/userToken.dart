import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class userToken {
  String accessToken;
  String refreshToken;
  userToken({this.accessToken, this.refreshToken});
  userToken.store({this.accessToken, this.refreshToken}) {
    this.storeToPref();
  }

  userToken.get(String t, String v) {
    this.getfromPref(t, v);
  }

  storeToPref() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString("accessToken", accessToken);
    pref.setString("refreshToken", refreshToken);
  }

  getfromPref(String t, String v) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    t = pref.getString("accessToken");
    v = pref.getString("refreshToken");
  }
}
