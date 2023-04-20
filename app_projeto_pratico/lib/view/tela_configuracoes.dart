// ignore_for_file: prefer_const_constructors, implementation_imports, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

class TelaConfiguracoes extends StatefulWidget {
  const TelaConfiguracoes({super.key});

  @override
  State<TelaConfiguracoes> createState() => _TelaConfiguracoesState();
}

class _TelaConfiguracoesState extends State<TelaConfiguracoes> {

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Configurações"),
        backgroundColor: const Color.fromARGB(255, 188, 138, 60),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.manage_accounts,
              color: Colors.black,
            ),
            onPressed: () {
            },
          )
        ],
      ),

      body: ListView(
        children: [

          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text("Perfil"),
            onTap: () {
              Navigator.pushNamed(context, '/perfil');
            }
          ),

          ListTile(
            leading: Icon(Icons.book_outlined),
            title: Text("Política de Privacidade"),
            onTap: () {
            }
          ),

          ListTile(
            leading: Icon(Icons.book_outlined),
            title: Text("Termos de Serviço"),
            onTap: () {
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
      )
    );
  }
}



