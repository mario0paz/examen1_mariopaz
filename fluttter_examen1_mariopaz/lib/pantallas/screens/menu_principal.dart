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
            leading: Icon(Icons.article),
            title: Text('Noticias'),
            onTap: () {
              context.go('/noticias');
            },
          ),
          ListTile(
            leading: Icon(Icons.attach_money),
            title: Text('Cambio de Moneda'),
            onTap: () {
              context.go('/cambio_moneda');
            },
          ),
          ListTile(
            leading: Icon(Icons.list),
            title: Text('lista de tareas'),
            onTap: () {
              context.go('/lista_tareas');
            },
          ),
          ListTile(
            leading: Icon(Icons.podcast),
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
