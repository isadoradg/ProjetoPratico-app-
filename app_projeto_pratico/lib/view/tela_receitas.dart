// ignore_for_file: prefer_const_constructors

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:app_projeto_pratico/model/receitas.dart';

class TelaReceitas extends StatefulWidget {
  const TelaReceitas({super.key});

  @override
  State<TelaReceitas> createState() => _TelaReceitasState();
}

class _TelaReceitasState extends State<TelaReceitas> {

  //Lista Dinâmica de objetos da classe PAIS
  List<Receitas> dados = [];
  
   //CARREGAR DADOS DO ARQUIVO JSON e coloca o conteúdo dentro de uma lista
  carregarDados() async {
    final String arq = await rootBundle.loadString('lib/data/receitas.json');
    final dynamic d = await json.decode(arq); // verifica se o arquivo está no formato json
    setState(() { // corre por todo o arquivo e coloca numa lista
      d.forEach((item) {
        dados.add(Receitas.fromJson(item));
      });
    });
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await carregarDados();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Receitas'),
        backgroundColor: const Color.fromARGB(255, 188, 138, 60),
      ),
      
      body: Padding(
        padding: EdgeInsets.all(20),
          child: ListView.builder(
            itemCount: dados.length,
            itemBuilder: (context, index) { //percorre e cria uma lista com os nomes das receitas
              return Card(
                child: ListTile(
                  title: Text(dados[index].receita), 
                  onTap: (){
                    Navigator.pushNamed(context,'/receitas-detalhes', arguments: dados[index]);
                  }
                ),
              );
            },
          ),
        ),
    );
  }
}
