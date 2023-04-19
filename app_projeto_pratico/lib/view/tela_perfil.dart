// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class TelaPerfil extends StatelessWidget {
  const TelaPerfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perfil'),
        backgroundColor: const Color.fromARGB(255, 188, 138, 60),
      ),

      body: Column(
        children: [
          /*Row(
            children: <Widget>[
              Image.asset('image/profile-dev-isadora.jpeg',),
            ],
          ),*/
          Container(
            //color: const Color.fromARGB(255, 188, 138, 60),
            //child: Center(child: Image.network('https://drive.google.com/file/d/1WqkIdeKochzWj5vtYAagWTTPVrvxSvMY/view?usp=share_link'),)
            child: Center(child: Image.asset('lib/image/koutaroub-2.png'),)
            
          ),

          Container(
            child: Column(
              children: [
                Row(
                  children: [
                    Text('Nome: Taylor Scott', 
                      style: TextStyle(fontSize: 22), 
                      textAlign: TextAlign.center,),
                  ],
                ),

                Row(
                  children: [
                    Text('E-mail: tscott@gmail.com', 
                      style: TextStyle(fontSize: 22), 
                      textAlign: TextAlign.center,),
                  ],
                ),
              ]
            ),
          ),
        ],
      ),
    );
  }
}



