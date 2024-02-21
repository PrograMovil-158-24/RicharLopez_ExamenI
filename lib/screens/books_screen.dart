// ignore_for_file: camel_case_types

import 'package:examen_1/widgets/Books_List.dart';
import 'package:flutter/material.dart';

class Books_Screen extends StatelessWidget {
  const Books_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Lista de Libros")),
      ),
      body: Center(child: BooksList()),
    );
  }
}
