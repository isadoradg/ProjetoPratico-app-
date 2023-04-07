// ignore_for_file: prefer_const_constructors, implementation_imports, sort_child_properties_last

import 'package:flutter/material.dart';

class TelaEsqueciSenha extends StatefulWidget {
  const TelaEsqueciSenha({super.key});

  @override
  State<TelaEsqueciSenha> createState() => _TelaEsqueciSenhaState();
}

class _TelaEsqueciSenhaState extends State<TelaEsqueciSenha> {
  //variavel de controle
  var txtEmail = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gastronomy'),
        backgroundColor: const Color.fromARGB(255, 188, 138, 60),
      ),

      body: Center(
        child: Column(
          children: [ 
            Container(// campo de insersão do nome
              padding: EdgeInsets.all(20),
                child: TextField(
                  controller: txtEmail, // propriedade importante! -> você consegue pegar o que o usuario digita no campo de texto
                  decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: TextStyle(fontSize: 18),
                    border: OutlineInputBorder(),
                  ),
                ),
            ),
            
            
            SizedBox(
              height: 10,
            ),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: Colors.black,
              ),
              onPressed: () {
                //verificar campos
                Navigator.pop(context);
              }, 
              child: const Text("Enviar"),
            ),
          ],
        ),
      ),

    );
  }
}

alterarSenha(context){
  var txtEmail = TextEditingController();

  return Row(
    children: [
      TextField(
        controller: txtEmail, // propriedade importante! -> você consegue pegar o que o usuario digita no campo de texto
        decoration: InputDecoration(
          labelText: 'Email',
          labelStyle: TextStyle(fontSize: 18),
          border: OutlineInputBorder(),
        ),
      ),
            
      SizedBox(
        height: 10,
      ),

      ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
        ),
        onPressed: () {
          //verificar campos
          Navigator.pop(context);
        }, 
        child: const Text("Enviar"),
      ),

    ],
  );
}




