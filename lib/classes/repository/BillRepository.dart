import 'package:flutter/foundation.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import '../billdata.dart';
import '../userToken.dart';

class BillRepository extends ChangeNotifier {
  List<BillsData> list;
  bool loading;
  userToken cur_user = userToken();
  BillRepository() {
    list = [];
    loading = false;
    this.getBill();
  }
  Future<String> _getToken() async {
    SharedPreferences _sh = await SharedPreferences.getInstance();
    String _s = _sh.getString("accessToken");
    return _s;
  }

  Future<void> getBill() async {
    String _accessToken = await this._getToken();
    print(_accessToken);
    String url =
        'https://test.knvl.me/api/v1/bills/search/by-date-range?startDate=2020-04-01&endDate=2020-04-08';

    final response = await http.get(url, headers: {
      "Authorization": "Bearer ${_accessToken}",
      "Content-Type": " application/json",
      "Accept": "application/json"
    });
    List<dynamic> responseJson;
    if (response.statusCode == 200) {
      loading = true;
      try {
        responseJson = jsonDecode(response.body);
        // print(responseJson);
        List<BillsData> _l = [];
        for (int i = 0; i < responseJson.length; i++) {
          _l.add(BillsData.fromJson(responseJson[i]));
        }
        list = _l;
      } catch (e) {
        print(e);
      }
    } else {
      print("operation failed");
    }

    notifyListeners();
  }
}
