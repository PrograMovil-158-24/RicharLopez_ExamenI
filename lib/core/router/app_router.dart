import 'package:examen_1/models/Books_model.dart';
import 'package:examen_1/screens/booksDetails.dart';
import 'package:examen_1/screens/books_screen.dart';

import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(routes: <RouteBase>[
  GoRoute(
    path: '/',
    builder: (context, GoRouterState state) {
      return const Books_Screen();
    },
  ),
  GoRoute(
    path: '/books-details',
    builder: (context, GoRouterState state) {
      final Map<String, dynamic>? extra = state.extra
          as Map<String, dynamic>?; // Convertir state.extra a un mapa
      final Books? book = extra != null
          ? extra['book'] as Books?
          : null; // Acceder a 'book' en el mapa si extra no es nulo
      return BookDetails(book: book!);
    },
  ),
]);
