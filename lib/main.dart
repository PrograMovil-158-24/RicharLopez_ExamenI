import 'package:flutter/material.dart';
import 'package:examen_1/core/router/app_router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Examen',
    
      routerConfig: router,
      // Aquí estableces BooksScreen como la pantalla principal
    );
  }
}
