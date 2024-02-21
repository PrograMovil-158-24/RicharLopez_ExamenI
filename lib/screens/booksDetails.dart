import 'package:examen_1/models/Books_model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../widgets/Books_Details.dart';

class BookDetails extends StatelessWidget {
  final Books book;

  const BookDetails({Key? key, required this.book}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color.fromRGBO(18, 95, 220, 1),
          foregroundColor: Colors.white10,
          titleTextStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          title: Text('Detalles del Libro'),
          leading: IconButton(
              onPressed: () {
                context.go('/');
              },
              icon: Icon(Icons.arrow_back))),
      body: Stack(children: [
        // Fondo de la imagen
        Positioned.fill(
          child: Image.asset(
            'assets/images/fondo.jpeg',
            fit: BoxFit.cover,
          ),
        ),
        Center(
          child: Books_Details(book: book),
        ),
      ]),
    );
  }
}
