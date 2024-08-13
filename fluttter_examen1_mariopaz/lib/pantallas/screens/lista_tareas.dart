import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ListaTareasScreen extends StatelessWidget {
  const ListaTareasScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Tareas'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              
            }, 
          ),
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {
              
            },
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(8.0),
        children: [
          _buildTareaItem(
            'Examen de Matemáticas',
            'Pendiente para el 20 de agosto',
            Icons.school,
            'Aug 20',
          ),
          const Divider(),
          _buildTareaItem(
            'Tarea de Historia',
            'Leer capítulos 4 y 5',
            Icons.book,
            'Aug 18',
          ),
          const Divider(),
          _buildTareaItem(
            'Foro de Literatura',
            'Participar en el foro sobre "Don Quijote"',
            Icons.forum,
            'Aug 19',
          ),
          const Divider(),
          _buildTareaItem(
            'Proyecto de Ciencias',
            'Entregar el reporte final',
            Icons.science,
            'Aug 25',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _buildTareaItem(String title, String subtitle, IconData icon, String date) {
    return ListTile(
      leading: Icon(icon, color: Colors.blue),
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(date, style: TextStyle(color: Colors.grey)),
          const Icon(Icons.star_border, color: Colors.amber),
        ],
      ),
    );
  }
}
