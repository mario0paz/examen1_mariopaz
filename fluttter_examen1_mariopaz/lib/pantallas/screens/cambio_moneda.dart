import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CambioMonedaScreen extends StatefulWidget {
  @override
  _CambioMonedaScreenState createState() => _CambioMonedaScreenState();
}

class _CambioMonedaScreenState extends State<CambioMonedaScreen> {
  double tasaCompra = 24.68;
  double tasaVenta = 24.80;
  double resultado = 0.0;

  final TextEditingController _controller = TextEditingController();

  void convertirDolaresALempiras(double valorDolares) {
    setState(() {
      resultado = valorDolares * tasaVenta;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cambio de Moneda'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Seleccionar Moneda:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Row(
              children: [
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Image.asset(
                    'assets/cambio_moneda/icono_dolar.png',
                    width: 24,
                    height: 24,
                  ),
                  label: Text('Dólar'),
                ),
                SizedBox(width: 16),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Image.asset(
                    'assets/cambio_moneda/icono_euro.png',
                    width: 24,
                    height: 24,
                  ),
                  label: Text('Euro'),
                ),
              ],
            ),
            SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Image.asset(
                      'assets/cambio_moneda/icono_tasa_compra.png',
                      width: 24,
                      height: 24,
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Compra',
                      style: TextStyle(color: Colors.blue),
                    ),
                    Text('Lps. $tasaCompra'),
                  ],
                ),
                SizedBox(width: 32),
                Column(
                  children: [
                    Image.asset(
                      'assets/cambio_moneda/icono_tasa_venta.png',
                      width: 24,
                      height: 24,
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Venta',
                      style: TextStyle(color: Colors.blue),
                    ),
                    Text('Lps. $tasaVenta'),
                  ],
                ),
              ],
            ),
            SizedBox(height: 32),
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                labelText: 'USD:',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                double? dolares = double.tryParse(value);
                if (dolares != null) {
                  convertirDolaresALempiras(dolares);
                } else {
                  setState(() {
                    resultado = 0.0;
                  });
                }
              },
            ),
            SizedBox(height: 16),
            Center(
              child: Text(
                'Lps: $resultado',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
