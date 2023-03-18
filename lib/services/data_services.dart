import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class DataServices {
  Future<List<dynamic>> getusers() async {
    var info = rootBundle.loadString("json/data.json");

    List<dynamic> list = json.decode(await info);

    return Future.delayed(
        Duration(seconds: 3), () => list.map((e) => e).toList());
  }
}
