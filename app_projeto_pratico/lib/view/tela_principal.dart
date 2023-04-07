// ignore_for_file: prefer_const_constructors, implementation_imports, prefer_const_literals_to_create_immutables
//import 'package:app_projeto_pratico/view/tela_cadastro.dart';
import 'package:flutter/material.dart';

class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({super.key});

  @override
  State<TelaPrincipal> createState() => _TelaPrincipalState();
}

// layout da tela inicial
class _TelaPrincipalState extends State<TelaPrincipal> {
  
  // declaracao das variaveis
  var txtEmail = TextEditingController();
  var txtSenha = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gastronomy"),
        backgroundColor: const Color.fromARGB(255, 188, 138, 60),
      ),

      body: Column(
        children: [
          Expanded(
            //width: MediaQuery.of(context).size.width*1.0,
            //flex: 1,
            child: login(context),
          ),
        ]
      ),


    );
  }
}

// entrada de dados
login(context){
  // declaracao das variaveis
  var txtEmail = TextEditingController();
  var txtSenha = TextEditingController();
  
  return SingleChildScrollView(
    child: Container(
      
      padding: EdgeInsets.all(20),
      //color: const Color.fromARGB(255, 188, 138, 60),

      child: Column(
        children: [
          // campo de texto para receber o email
            Container(// campo de insersão do nome
            padding: EdgeInsets.all(20),
              child: TextField(
                controller: txtEmail,
                decoration: InputDecoration(
                  labelText: 'email',
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
            /*TextField(
              //controller: txtEmail,
              decoration: InputDecoration(
                labelText: "e-mail",
                labelStyle: TextStyle(
                  fontSize: 10,
                  color: Colors.black),
                icon: Icon(Icons.email_outlined),
              ),
            ),

          SizedBox(
            height: 10,
          ),*/

          // campo para receber a senha
          Container(// campo de insersão do nome
            padding: EdgeInsets.all(20),
              child: TextField(
                controller: txtSenha,
                decoration: InputDecoration(
                  labelText: 'senha',
                  labelStyle: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                  border: OutlineInputBorder(),

                ),
                
              ),
              //color: const Color.fromARGB(255, 188, 138, 60),
            ),

          SizedBox(
              height: 5,
          ),
          
          /*TextField(
            //controller: txtSenha,
            decoration: InputDecoration(
              labelText: "password",
              labelStyle: TextStyle(
                fontSize: 10,
                color: Colors.black),
              icon: Icon(Icons.password),
            ),
          ),*/
          SizedBox(
            height: 10,
          ),
          // campo para caso o usuario esquecer a senha
          TextButton(
            
            onPressed: () {
              Navigator.pushNamed(context, '/trocar-senha');
            },
            style: TextButton.styleFrom(
              foregroundColor: Colors.black,
              textStyle: const TextStyle(
                fontSize: 10,
              ),
            ), 
            child: const Text("Esqueci a senha"),
          ),
          SizedBox(
            height: 10,
          ),
          // campo para login
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: Colors.black,
            ),
            onPressed: () {
              //verificar campos

            }, 
            child: const Text("Login"),
          ),
          SizedBox(
            height: 10,
          ),
          TextButton(
            style: TextButton.styleFrom(
              foregroundColor: Colors.black,
              textStyle: const TextStyle(
                fontSize: 10,
              ),
            ),/*
            child: const Text("Nao tem conta? Cadastre-se!"),
            onPressed: (){
              Navigator.pushNamed(context, '/cadastro');
              //Navigator.push(context, MaterialPageRoute(builder: ((context) => TelaCadastro()),);
            },*/
            child: Text('Nao tem conta? Cadastre-se!'),
            onPressed: () {
              Navigator.pushNamed(context, '/cadastro');
              //Navigator.push(context, MaterialPageRoute(builder: (context) => TelaCadastro()));
            },
          ),

        ],
      ),


    ),
  );
}

// exibir uma mensagem
/*  mensagem(msg){
    ScaffoldMessenger.of(context).showSnackBar(
      // barrinha que aparece e desapararece depois de alguns segundos
      SnackBar(
        duration: Duration(seconds: 2),
        content: Text(
          msg,
          style: TextStyle(color: Colors.blueGrey.shade600),
          ),
        backgroundColor: Colors.blueGrey.shade50,
      ),
    );
  }*/



