import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MenuPrincipalScreen extends StatelessWidget {
  const MenuPrincipalScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menú Principal'),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Image.asset('assets/menu_principal/icono_noticias.png'),
            title: Text('Noticias'),
            onTap: () {
              context.go('/noticias');
            },
          ),
          ListTile(
            leading: Image.asset('assets/menu_principal/icono_cambio_moneda.png'),
            title: Text('Cambio de Moneda'),
            onTap: () {
              context.go('/cambio_moneda');
            },
          ),
          ListTile(
            leading: Image.asset('assets/menu_principal/icono_lista_tareas.png'),
            title: Text('Lista de Tareas'),
            onTap: () {
              context.go('/lista_tareas');
            },
          ),
          ListTile(
            leading: Image.asset('assets/menu_principal/icono_podcast.png'),
            title: Text('Podcast'),
            onTap: () {
              context.go('/podcast');
            },
          ),
        ],
      ),
    );
  }
}
