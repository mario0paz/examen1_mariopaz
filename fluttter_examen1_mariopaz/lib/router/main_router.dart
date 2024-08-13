import 'package:examen1_mariopaz/pantallas/index.dart';
import 'package:go_router/go_router.dart';

import 'package:examen1_mariopaz/pantallas/screens/menu_principal.dart';
import 'package:examen1_mariopaz/pantallas/screens/espacio_noticias.dart';
import 'package:examen1_mariopaz/pantallas/screens/cambio_moneda.dart';
import 'package:examen1_mariopaz/pantallas/screens/lista_tareas.dart';
import 'package:examen1_mariopaz/pantallas/screens/podcast.dart';  

final mainRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const MenuPrincipalScreen(),
    ),
    GoRoute(
      path: '/noticias',
      builder: (context, state) => const EspacioNoticiasScreen(),
    ),
    GoRoute(
      path: '/cambio_moneda',
      builder: (context, state) => const CambioMonedaScreen(),
    ),
    GoRoute(
      path: '/lista_tareas',
      builder: (context, state) => const ListaTareasScreen(),
    ),
    GoRoute(
      path: '/podcast',
      builder: (context, state) => const PodcastScreen(),
    ),
  ],
);
