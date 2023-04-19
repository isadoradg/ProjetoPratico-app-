// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:app_projeto_pratico/view/tela_principal.dart';
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

            ElevatedButton(
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
            ),

            
      
          ],
        ),
      ),

      drawer: Drawer(
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255,235,196,127),
                ),
                accountName: Text("Taylor Scott"),
                accountEmail: Text("tscott@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.white,//Color.fromARGB(255,235,196,127),
                    /*Theme.of(context).platform == TargetPlatform.iOS
                    ? Color.fromARGB(255,235,196,127): Colors.black,*/
                    child: Text("T", style: 
                      TextStyle(fontSize: 40.0, color: Colors.black),
                    ),
                ),
              ),
              ListTile(
                  //leading: Icon(Icons.search)),
                  title: Text("Pesquisar Receita"),
                  //subtitle: Text("Perfil do usuário..."),
                  trailing: Icon(Icons.search),
                  onTap: () {
                    //Navigator.pop(context);
                  }),
              ListTile(
                  leading: Icon(Icons.star),
                  title: Text("Favoritos"),
                  //subtitle: Text("meus favoritos..."),
                  //trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    //debugPrint('toquei no drawer');
                  }),
              ListTile(
                  leading: Icon(Icons.account_circle),
                  title: Text("Perfil"),
                  //subtitle: Text("Perfil do usuário..."),
                  //trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    //Navigator.pop(context);
                  }),
              
            ],
          ),
      ),

    );
  }
}
/*
class sobreAplicativo extends StatelessWidget {
  const sobreAplicativo({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('AlertDialog Title'),
          content: const Text('AlertDialog description'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: const Text('OK'),
            ),
          ],
        ),
      ),
      child: const Text('Sobre'),
    );
  }
}
*/



/*
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
*/

