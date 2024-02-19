import 'package:examen_1/screens/books_screen.dart';

import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(routes: <RouteBase>[
  GoRoute(
    
    path: '/',
    builder: (context, GoRouterState state) {
      return const Books_Screen();
    },
  )
]);
