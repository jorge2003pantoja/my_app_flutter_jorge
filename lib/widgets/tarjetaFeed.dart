import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:hola_mundo/widgets/botonesCard.dart';
import 'package:hola_mundo/widgets/descripcion.dart';
import 'package:hola_mundo/widgets/imagenCard.dart';
import 'package:hola_mundo/widgets/tituloCard.dart';

class tarjetaFeed extends StatelessWidget {
  const tarjetaFeed({
    super.key,
    required this.tarjeta,

  });

  //final TextStyle textStyle;
  final Map<String, String> tarjeta;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: const Color.fromARGB(255, 172, 217, 238)),
      height: 400,
      width: double.infinity,
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
    
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [               
          SizedBox(width: 20), 

            tituloCard(nombre:tarjeta["nombre"]!,),
            
            SizedBox(height: 10), // Espacio entre el nombre y el texto
          
            descripcion(des:tarjeta["descripcion"]!,),
            
            SizedBox(height: 10),
          
            imagenCard(img:tarjeta["imagen"]!,), 
          
            SizedBox(height: 10),// Espacio entre el texto y los botones
            //Botones
            botonesCard(),
            
        ],
      ),
      
      
    );
  }
}



