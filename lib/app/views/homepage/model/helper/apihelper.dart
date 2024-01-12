import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

import '../api model/apimodel.dart';

class APICallProvider with ChangeNotifier {
  bool _dataIsAvailable = false;
  get dataIsAvailable => dataIsAvailable;
  set dataIsAvailable(value) {
    _dataIsAvailable = value;
    notifyListeners();
  }

  Future fetchApiData(String city) async {
    var response = await http.get(Uri.parse(
        'https://api.tomorrow.io/v4/weather/forecast?location=$city&apikey=AbttBN72a24jcYAJKFrBxgzOw1G1qEoo'));
    print(response.body);
    var r1 = jsonDecode(response.body);
    print(r1);
    return Values.fromJson(r1);
  }
}
