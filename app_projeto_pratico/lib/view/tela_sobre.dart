// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class TelaSobreApp extends StatelessWidget {
  //const TelaSobreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sobre o App"),
        backgroundColor: const Color.fromARGB(255, 188, 138, 60),
      ),
      body: Column(
        children: [
          Container(
            //color: const Color.fromARGB(255, 188, 138, 60),
            margin: EdgeInsets.all(30.0),
            padding: EdgeInsets.all(10.0),
            alignment: Alignment.topCenter,
            width: 500,
            height: 250,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(),
            ),
            child: Text("Um dos meus maiores hobbies é cozinhar, tanto a comida do dia a dia quanto bolos de aniversário (o que eu mais faço). Então, a ideia do aplicativo de culinária (Gastronomy Receitas) é juntar várias receitas (doces, salgados e do dia a dia) para auxiliar e ser de uso prático na hora de cozinhar. Ele está sendo desenvolvido pela Isadora Domingos, o qual seu protótipo foi feito no segundo semestre de 2021 (na matéria de Interação Humano Computador (IHC) do curso de Análise e Desenvolvimento de Sistemas (ADS)) e está saindo do papel no primeiro semestre de 2023 (na matéria de Programação em Dispositivos Móveis, no mesmo curso de ADS). (A foto abaixo é ilustrativa do(a) desenvolvedor(a).)", style: TextStyle(fontSize: 15)),
          ),

          Container(
            alignment: Alignment.topCenter,
            child: Center(child: Image.asset('lib/image/profile-dev-isadora.jpeg',height: 234, width: 234, alignment: Alignment.bottomCenter,),)
          ),
        ],
      ),

      
      
        /*Container(
        child: Center(
          child: Column(
            children: <Widget>[
              Row(
                children: [
                  Text('Um dos meus maiores hobbies é cozinhar, tanto a comida do dia a dia quanto bolos de aniversário (o que eu mais faço). Então, a ideia do aplicativo de culinária (Gastronomy Receitas) é juntar várias receitas (doces, salgados e do dia a dia) para auxiliar e ser de uso prático na hora de cozinhar. Ele está sendo desenvolvido pela Isadora Domingos, o qual seu protótipo foi feito no segundo semestre de 2021 (na matéria de Interação Humano Computador (IHC) do curso de Análise e Desenvolvimento de Sistemas (ADS)) e está saindo do papel no primeiro semestre de 2023 (na matéria de Programação em Dispositivos Móveis, no mesmo curso de ADS). /foto/'),
                ],
              ),
              //Image.asset(),
            ],
          ),
        ),
      ),*/
    );
  }
}




