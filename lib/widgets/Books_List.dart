import 'package:examen_1/services/JsonReader.dart';
import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Widget BooksList() {
  return FutureBuilder(
      future: JsonReader.loadData(),
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
        if (snapshot.hasData) {
          return ListView(
            children: listItems(snapshot.data, context),
          );
        } else {
          return CircularProgressIndicator();
        }
      });
}

List<Widget> listItems(List<dynamic>? data, BuildContext context) {
  List<Widget> listItems = [];
  print(data);
  return listItems;
}
