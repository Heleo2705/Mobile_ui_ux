import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class userToken extends ChangeNotifier {
  String accessToken;
  String refreshToken;
  userToken({this.accessToken, this.refreshToken});
  userToken.store({this.accessToken, this.refreshToken}) {
    this.storeToPref();
  }

 

  storeToPref() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString("accessToken", accessToken);
    pref.setString("refreshToken", refreshToken);
    notifyListeners();
  }

  

}
