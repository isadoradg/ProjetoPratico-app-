// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';

// tela inicial após o login
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
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.logout,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          )
        ],
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
              child: Text("Pesquisar Receita..."), //abrir uma nova tela com as receitas diponíveis e seu conteúdo(detalhe)
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
                Navigator.pushNamed(context, '/receitas');
              }, 
              child: const Text("Receitas"),
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
          ],
        ),
      ),

      drawer: Drawer(
          child: ListView(
            children: <Widget>[
              ListTile(
                //leading: Icon(Icons.search)),
                title: Text("Pesquisar Receita"),
                trailing: Icon(Icons.search),
                onTap: () {
                  Navigator.pop(context);
                }
              ),
              ListTile(
                leading: Icon(Icons.cookie_outlined),
                title: Text("Receitas"),
                onTap: () {
                  Navigator.pushNamed(context, '/receitas');
                }
              ),
              ListTile(
                leading: Icon(Icons.star),
                title: Text("Favoritos"),
                onTap: () {
                  Navigator.pop(context);
                }
              ),
              ListTile(
                leading: Icon(Icons.manage_accounts),
                title: Text("Configurações"),
                onTap: () {
                  Navigator.pushNamed(context, '/config');
                }
              ),
              
            ],
          ),
      ),

    );
  }
}

