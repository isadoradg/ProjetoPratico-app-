// ignore_for_file: prefer_const_constructors

import 'package:app_projeto_pratico/view/tela_cadastro.dart';
import 'package:app_projeto_pratico/view/tela_esqueci_senha.dart';
import 'package:app_projeto_pratico/view/tela_login.dart';
import 'package:app_projeto_pratico/view/tela_perfil.dart';
import 'package:app_projeto_pratico/view/tela_receitas.dart';
import 'package:app_projeto_pratico/view/tela_receitas_detalhes.dart';
import 'package:app_projeto_pratico/view/tela_sobre.dart';
import 'view/tela_principal.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "App Projeto Pratico",
      //nomeando o caminho das interfaces (telas)
      initialRoute: '/principal',
      routes: {
        '/principal': (context) => TelaPrincipal(),
        '/cadastro': (context) => TelaCadastro(),
        '/trocar-senha':(context) => TelaEsqueciSenha(),
        '/inicial':(context) => TelaLogin(),
        '/sobre':(context) => TelaSobreApp(),
        '/perfil':(context) => TelaPerfil(),
        '/receitas':(context) => TelaReceitas(),
        '/receitas-detalhes':(context) => TelaReceitasDetalhes(),
      },
      
    )
  );
}

