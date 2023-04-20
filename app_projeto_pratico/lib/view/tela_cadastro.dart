// ignore_for_file: prefer_const_constructors, implementation_imports, sort_child_properties_last

import 'package:flutter/material.dart';
//import 'package:app_projeto_pratico/model/cadastro.dart';

class TelaCadastro extends StatefulWidget {
  const TelaCadastro({super.key});

  @override
  State<TelaCadastro> createState() => _TelaCadastroState();
}

class _TelaCadastroState extends State<TelaCadastro> {
    // declaracao das variaveis
  var txtNome = TextEditingController();
  var txtEmail = TextEditingController();
  var txtSenha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gastronomy'),
        backgroundColor: const Color.fromARGB(255, 188, 138, 60),
      ),
      body: Center(child:
        Column(
        children: [
          SizedBox(
              height: 5,
          ),
          
          Center(
            child: Text("Crie a sua conta no App Gastronomy! :)",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),

          Container(// campo de insersão do nome
            padding: EdgeInsets.all(20),
              child:TextField(
                controller: txtNome,
                decoration: InputDecoration(
                  labelText: 'Nome',
                  labelStyle: TextStyle(fontSize: 18),
                  //icon: Icon(Icons.person), 
                  border: OutlineInputBorder(),
                ),
              ),
            //color: const Color.fromARGB(255, 188, 138, 60),
          ),

          SizedBox(
              height: 5,
          ),

          Container(// campo de insersão do nome
            padding: EdgeInsets.all(20),
              child: TextField(
                controller: txtEmail,
                decoration: InputDecoration(
                  labelText: 'E-mail',
                  labelStyle: TextStyle(fontSize: 18),
                  //icon: Icon(Icons.person), 
                  border: OutlineInputBorder(),
                ),
              ),
              //color: const Color.fromARGB(255, 188, 138, 60),
          ),

          SizedBox(
              height: 5,
          ),

          Container(// campo de insersão do nome
            padding: EdgeInsets.all(20),
              child: TextField(
                controller: txtSenha,
                decoration: InputDecoration(
                  labelText: 'Senha',
                  labelStyle: TextStyle(fontSize: 18),
                  //icon: Icon(Icons.person), 
                  border: OutlineInputBorder(),
                ),
              ),
              //color: const Color.fromARGB(255, 188, 138, 60),
          ),

          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: Colors.black,
            ),
            onPressed: () {
              //verificar campos
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: const Text('Cadastro realizado com sucesso!'),
                ),
              );
            }, 
            child: const Text("Cadastrar"),
          ),

        ],
      ),
      
      )
    );
  }
}




