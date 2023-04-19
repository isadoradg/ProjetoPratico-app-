// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

//
// Tela inicial após o login
//
class TelaLogin extends StatefulWidget {
  const TelaLogin({super.key});

  @override
  State<TelaLogin> createState() => _TelaLoginState();
}

class _TelaLoginState extends State<TelaLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //title: Text('Gastronomy'),
        backgroundColor: const Color.fromARGB(255, 188, 138, 60),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        color:  Color.fromARGB(255, 188, 138, 60),
        
        child: Column(
          children: [
            
            Container(
              color: const Color.fromARGB(255, 188, 138, 60),
              child: Center(
                child: Image.asset('lib/image/logotipo-app.PNG', height: 344, width: 350,)
              )
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
                //Navigator.pop(context);
              }, 
              child: Text("Receitas"), //abrir uma nova tela com as receitas diponíveis e seu conteúdo(detalhe)
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
                //Navigator.pop(context);
              }, 
              child: const Text("Favoritos"),
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
                //Navigator.pop(context);
              }, 
              child: const Text("Configurações"),
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
                //Navigator.pop(context);
                sobreAplicativo(context);
              }, 
              child: const Text("Sobre"), 
            ),

            
      
          ],
        ),
      ),

    );
  }
}

sobreAplicativo(context) 
{ 
    // configura o button
  Widget okButton = ElevatedButton(
    child: Text("OK"),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );
  // configura o  AlertDialog
  AlertDialog alerta = AlertDialog(
    title: Text("Sobre o App"),
    content: Text("~ explicações gerais sobre o trabalho ~"),
    actions: [
      okButton,
    ],
  );
  // exibe o dialog
  showDialog(
    context: context,
    builder: (context) {
      return alerta;
    },
  );
}


