import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../apiurls.dart';
import 'package:http/http.dart' as http;

class registerUser {
  String countryCode = "+91";
  String number;
  APIURLs a = APIURLs();
  bool load;

  registerUser({@required this.countryCode, @required this.number}) {
    this.registerApiCall();
  }

  void registerApiCall() async {
    load = await callForOTP();
  }

  Future<bool> callForOTP() async {
    bool _load = false;
    final _body=jsonEncode({"login": "$number", "countryCode": "$countryCode"});
    http.Response response = await http.post(a.registerOTP,
        body: _body,
        headers: {"Content-Type": "application/json"});
    // print(response.statusCode);
    if (response.statusCode == 200) _load = true;
    return _load;
  }
}
