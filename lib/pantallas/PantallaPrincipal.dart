import 'package:flutter/material.dart';
import 'package:hola_mundo/pantallas/Buscar.dart';
import 'package:hola_mundo/pantallas/Perfil.dart';
import 'package:hola_mundo/pantallas/formulario.dart';
import 'package:hola_mundo/pantallas/lista.dart';
import 'package:hola_mundo/pantallas/tyc.dart';

class PantallaPrincipal extends StatefulWidget {
  const PantallaPrincipal({super.key});

  @override
  State<PantallaPrincipal> createState() => _PantallaPrincipalState();
}

class _PantallaPrincipalState extends State<PantallaPrincipal> {
  int _paginaActual = 0;
  final List<Widget> _paginas = [
    listaFeed(),
    paginaBuscar(),
    perfil()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text(
          'Red Social',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(child: _paginas[_paginaActual]),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => tyc()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
                padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
                textStyle: const TextStyle(fontSize: 16),
              ),
              child: const Text("Términos y Condiciones"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const formulario()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
                padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
                textStyle: const TextStyle(fontSize: 16),
              ),
              child: const Text("Formulario"),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _paginaActual,
        onTap: (index) {
          setState(() {
            _paginaActual = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Inicio"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Buscar"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Perfil"),
        ],
        selectedItemColor: Colors.teal,
        unselectedItemColor: Colors.grey,
      ),
      backgroundColor: const Color.fromARGB(255, 240, 240, 240),
    );
  }
}
