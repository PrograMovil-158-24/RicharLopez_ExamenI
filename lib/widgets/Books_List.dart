import 'package:examen_1/services/JsonReader.dart';
import 'package:examen_1/models/Books_model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
  List<Widget> _listItems = [];

  data?.forEach((element) {
    _listItems.add(ListTile(
        title: Text(element.title),
        onTap: () => {
              context.go('/books-details', extra: {'book': element})
            }));
  });
  return _listItems;
}
