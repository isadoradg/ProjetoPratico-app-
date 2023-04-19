// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_string_interpolations

import 'package:flutter/material.dart';

import '../model/receitas.dart';

class TelaReceitasDetalhes extends StatefulWidget {
  const TelaReceitasDetalhes({super.key});

  @override
  State<TelaReceitasDetalhes> createState() => _TelaReceitasDetalhesState();
}

class _TelaReceitasDetalhesState extends State<TelaReceitasDetalhes> {
  @override
  Widget build(BuildContext context) {
    //
    // Receber o objeto passado como argumento
    //
    var obj = ModalRoute.of(context)!.settings.arguments as Receitas;

    return Scaffold(
      appBar: AppBar(
        title: Text('Receitas'),
        backgroundColor: const Color.fromARGB(255, 188, 138, 60),
        //desativar o botão de voltar do AppBar
        //automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Receita', style: TextStyle(fontSize: 22),),
              Text(
                '${obj.receita}',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 10),
              Text('Ingredientes', style: TextStyle(fontSize: 22),),
              Text(
                obj.ingredientes,
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 10),
              Text('Modo de Preparo', style: TextStyle(fontSize: 22),),
              Text(
                obj.modoPreparo,
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ),
      ),
      //
      // BOTÃO FLUTUANTE
      //
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 188, 138, 60),
        child: Icon(Icons.favorite,),
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                '${obj.receita} adicionado aos favoritos.',
              ),
            ),
          );
          //Retornar a tela anterior
          Navigator.pop(context);
        },
      ),
    );
  }
}



/*
class TelaDetalhes extends StatefulWidget {
  const TelaDetalhes({super.key});

  @override
  State<TelaDetalhes> createState() => _TelaDetalhesState();
}

class _TelaDetalhesState extends State<TelaDetalhes> {
  @override
  Widget build(BuildContext context) {
    //
    // Receber o objeto passado como argumento
    //
    var obj = ModalRoute.of(context)!.settings.arguments as Pais;

    return Scaffold(
      appBar: AppBar(
        title: Text('Países (IBGE)'),
        //desativar o botão de voltar do AppBar
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Nome'),
              Text(
                '${obj.nome} (${obj.abreviatura})',
                style: TextStyle(fontSize: 22),
              ),
              SizedBox(height: 10),
              Text('Capital'),
              Text(
                obj.capital,
                style: TextStyle(fontSize: 22),
              ),
              SizedBox(height: 10),
              Text('Área'),
              Text(
                '${obj.area} km²',
                style: TextStyle(fontSize: 22),
              ),
              SizedBox(height: 10),
              Text('Histórico'),
              Text(
                obj.historico,
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ),
      ),
      //
      // BOTÃO FLUTUANTE
      //
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.favorite),
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                '${obj.nome} adicionado aos favoritos.',
              ),
            ),
          );
          //Retornar a tela anterior
          Navigator.pop(context);
        },
      ),
    );
  }
}
*/



