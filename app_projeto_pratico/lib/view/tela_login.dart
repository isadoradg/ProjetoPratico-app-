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

            /*ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
              ),
              // Usando AlertDialog para apresentar sobre o aplicativo
              /*onPressed: () => showDialog<String>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  title: const Text('Sobre o Aplicativo'),
                  content: const Text('A escolha do tema voltado para culinária foi devido ao meu gosto por cozinhar. O objetivo da criação desse aplicativo é ser prático e auxiliar na busca por receitas. Esse App foi desenvolvido pela Isadora Domingos na disciplina de Programação para Dispositivos Móveis. /foto/',),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'OK'),
                      child: const Text('OK'),
                    ),
                  ],
                ),
              ), */
              
              onPressed: () {
                //Navigator.pop(context);
                //sobreAplicativo();
                Navigator.pushNamed(context, '/sobre');
              },
              child: const Text("Sobre"), 
            ),*/

            
      
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
                onTap: () {}
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
                onTap: () {}
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text("Perfil"),
                onTap: () {
                  Navigator.pushNamed(context, '/perfil');
                }
              ),
              ListTile(
                leading: Icon(Icons.book_outlined),
                title: Text("Sobre"),
                onTap: () {
                  Navigator.pushNamed(context, '/sobre');
                }
              ),
              
            ],
          ),
      ),

    );
  }
}

