import 'package:flutter/material.dart';
import 'package:hola_mundo/datos/datos.dart';
import 'package:hola_mundo/widgets/tarjetaFeed.dart';

class listaFeed extends StatelessWidget {
  const listaFeed({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
     itemCount: listaCards.length,
     itemBuilder: (context,index){
       return tarjetaFeed(tarjeta: 
       listaCards[index]);
     },
          );
  }
}


