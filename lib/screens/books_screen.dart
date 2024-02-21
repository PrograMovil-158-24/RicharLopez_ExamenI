// ignore_for_file: camel_case_types

import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:examen_1/widgets/Books_List.dart';
import 'package:flutter/material.dart';

class Books_Screen extends StatelessWidget {
  const Books_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //backgroundColor: Color.fromRGBO(241, 171, 21, 1),
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(18, 95, 220, 1),
          foregroundColor: Colors.white10,
          titleTextStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          title: const Center(child: Text("Lista de Libros")),
        ),
        body: Stack(children: [
          // Fondo de la imagen
          Positioned.fill(
            child: Image.asset(
              'assets/images/fondo.jpeg',
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: BooksList(),
          ),
        ]));
  }
}
