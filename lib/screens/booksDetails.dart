import 'package:examen_1/models/Books_model.dart';
import 'package:flutter/material.dart';

import '../widgets/Books_Details.dart';

class BookDetails extends StatelessWidget {
  final Books book;

  const BookDetails({Key? key, required this.book}):super (key:key);

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: Text('Detalles del Libro'),
      ),
      body: Books_Details(book: book),
    );
  }
}

