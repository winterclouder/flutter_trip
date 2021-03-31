import 'package:flutter_trip/model/home_model.dart';

import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_trip/model/home_model.dart';

const HOME_URL = 'www.devio.org';

class HomeDao {
  static Future<HomeModel> fetch() async {
    final response = await http.get(Uri.http(HOME_URL, '/io/flutter_app/json/home_page.json'));
    if (response.statusCode == 200) {
      Utf8Decoder utf8decoder = Utf8Decoder();
      var result = json.decode(utf8decoder.convert(response.bodyBytes));
      print(result);
      return HomeModel.formJson(result);
    } else {
      throw Exception('失敗');
    }
  }
}