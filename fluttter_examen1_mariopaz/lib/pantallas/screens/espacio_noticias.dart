import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Noticias',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: NoticiasScreen(),
    );
  }
}

class NoticiasScreen extends StatelessWidget {
  const NoticiasScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Noticias'),
      ),
      body: ListView(
                padding: const EdgeInsets.all(8.0),
        children: [
          ListTile(
            leading: Image.asset('assets/noticias/Iman_isak_gol.png'),
            title: Text('Isak marca un hat-trick en la victoria del newcastle united'),
            subtitle: Text('10 min'),
          ),
          ListTile(
            title: Text('Title'),
            subtitle: Text('Details'),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text('BUTTON1'),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('BUTTON2'),
                ),
              ],
            ),
          ),
          ListTile(
            leading: Image.asset('assets/noticias/madrid_robo_clasico.png'),
            title: Text('Real Madrid roba una ves mas en un emocionante clásico.'),
            subtitle: Text('10 min'),
          ),
        ],
      ),
    );
  }
}
