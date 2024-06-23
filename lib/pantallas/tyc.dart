import 'package:flutter/material.dart';

void main() => runApp(const tyc());

class tyc extends StatelessWidget {
  const tyc({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Terminos y condiciones'),
        ),
        body: Container(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Bienvenido a nuestra aplicación móvil My app Jorge. Estos Términos y Condiciones rigen el uso de la Aplicación proporcionada por My app Jorge. Al descargar, instalar o utilizar la Aplicación, usted acepta cumplir y estar sujeto a estos Términos. Si no está de acuerdo con estos Términos, no debe utilizar la Aplicación.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16.0),
            ),
          ),
        ),
      ),
    );
  }
}

