import 'package:flutter/material.dart';

class PodcastScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Podcast'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Card(
              child: ListTile(
                leading: Image.asset('assets/podcast/icono_play.png'),
                title: Text('Reproduciendo: Título del Podcast'),
                subtitle: Text('Descripción breve del podcast'),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Image.asset('assets/podcast/icono_play.png'),
                  iconSize: 50,
                  onPressed: () {
                    
                  },
                ),
                IconButton(
                  icon: Image.asset('assets/podcast/icono_pause.png'),
                  iconSize: 50,
                  onPressed: () {
                    
                  },
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Image.asset('assets/podcast/icono_repetir.png', width: 24),
                    Text('Repetir'),
                    Checkbox(value: false, onChanged: (bool? value) {}),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.shuffle),
                    Text('Aleatorio'),
                    Checkbox(value: false, onChanged: (bool? value) {}),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
