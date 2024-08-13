import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NoticiasScreen extends StatelessWidget {
  const NoticiasScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Noticias'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8.0),
        children: [
          _buildNoticiaItem(
            'Isak marca un hat-trick en la victoria del newcastle united',
            '10 min',
          ),
          const Divider(),
          _buildNoticiaItem(
            'Title',
            'Details',
            buttons: ['BUTTON1', 'BUTTON2'],
          ),
          const Divider(),
          _buildNoticiaItem(
            'Real Madrid empatan en un emocionante clásico.',
            '10 min',
          ),
        ],
      ),
    );
  }

  Widget _buildNoticiaItem(String title, String subtitle, {List<String>? buttons}) {
    return ListTile(
      leading: const CircleAvatar(
        child: Icon(Icons.article),
      ),
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: buttons == null
          ? const Icon(Icons.image, size: 50)
          : Row(
              mainAxisSize: MainAxisSize.min,
              children: buttons
                  .map((button) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4.0),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(button),
                        ),
                      ))
                  .toList(),
            ),
    );
  }
}
