// ignore: file_names
import 'dart:convert' as convert;

import 'package:examen_1/models/Books_model.dart';
import 'package:flutter/services.dart';

/*class JsonReader {
  Future<Books> loadData() async {
    final response = await rootBundle.loadString('assets/data.json');
    final data = await json.decode(response);

    return data;
  }
}*/

class _JsonReader {
  Future<List<Books>> loadData() async {
    final response = await rootBundle.loadString('assets/data.json');
    final Map<String, dynamic> data = convert.jsonDecode(response);
    final List<dynamic> dataList = data['data'];
    return dataList.map((e) => Books.fromJson(e)).toList();
  }
}

final JsonReader = _JsonReader();
