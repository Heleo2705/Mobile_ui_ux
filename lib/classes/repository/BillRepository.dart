import 'package:flutter/foundation.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
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
  Future<void> getBill() async {
    String url =
        'https://test.knvl.me/api/v1/bills/search/by-date-range?startDate=2020-04-01&endDate=2020-04-08';

    final response = await http.get(url, headers: {
      "Authorization":
          "Bearer eyJzdWIiOiI3MDExMDcwNDA0IiwiYXV0aCI6IlJPTEVfVVNFUiIsInN0b3JlSWQiOiJOTy5TVE9SRSIsImJyYW5kSWQiOiJOTy5CUkFORCIsImV4cCI6MTU4NjI2NjA1Mn0.ezSB3m-qzB9PsfXyNUvzVDiMskBxljwoz8XmR1lkFjYqT8kaa1z1p4mxylUqmo5kezzXJbX6FOZ-Zll7nOOtEg",
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
