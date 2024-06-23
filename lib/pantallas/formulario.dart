import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(const formulario());

class formulario extends StatefulWidget {
  const formulario({super.key});

  @override
  State<formulario> createState() => _formularioState();
}
class _formularioState extends State<formulario>{
  final GlobalKey<FormState> estadoFormulario=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Formulario'),
        ),
        body: Container(
          padding: EdgeInsets.all(15),
          margin: EdgeInsets.all(20),
          child:Form(
            key: estadoFormulario,
            child:Column(
              children:[
                Container(child: TextFormField(
                  validator:(value){
                    if(!value!.contains("@")){
                      return "El correo no es valido";
                    }else{

                    }
                  },
                  decoration: 
                  const InputDecoration(hintText: "Correo Electronico"),
                )),
                Container(
                  padding: EdgeInsets.only(top:10),
                  width:double.infinity,
                  child: OutlinedButton(onPressed: (){
                    if(estadoFormulario.currentState!.validate()){
                      print("Excelente");
                    }else{
                      print("Error!");
                    }
                  }, child: const Text("Validar"),)
                )
              ]
            )
            //child: Widget,)
        ),
      ),
    ),);
  }
}



  
