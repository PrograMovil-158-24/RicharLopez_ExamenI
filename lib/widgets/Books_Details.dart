import 'package:examen_1/models/Books_model.dart';
import 'package:flutter/material.dart';

class Books_Details extends StatelessWidget {
  const Books_Details({
    super.key,
    required this.book,
  });

  final Books book;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Título: ${book.title}',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            'Año de Publicacion: ${book.year}',
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(height: 10),
          Text(
            'Descripción: ${book.handle}',
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(height: 10),
          Text(
            'ISBN: ${book.isbn}',
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(height: 10),
          Text(
            'Paginas: ${book.pages}',
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}
