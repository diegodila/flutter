import 'package:app06/app06.dart';
import 'package:app06/produtos.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(AppProdutos());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: CursoScreen(),
    );
  }
}

class CursoScreen extends StatefulWidget {
  @override
  _CursoScreenState createState() => _CursoScreenState();
}

class _CursoScreenState extends State<CursoScreen> {
  @override
  Widget build(BuildContext context) {
    CursoModel c1 = CursoModel(
      nome: 'Flutter',
      nivel: 'basico',
      indicador: 0.9,
    );

    CursoModel c2 = CursoModel(
      nome: 'Java',
      nivel: 'intermediário',
      indicador: 1.0,
    );

    CursoModel c3 = CursoModel(
      nome: 'Ios',
      nivel: 'avançado',
      indicador: 0.5,
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Fiap Cursos'),
        backgroundColor: Color.fromRGBO(64, 75, 96, 0.5),
      ),
      body: ListView(
        children: [
          buildCard(c1),
          buildCard(c2),
          buildCard(c3),
          buildCard(c2),
          buildCard(
            CursoModel(
              nome: "React",
              nivel: 'Avançado',
              indicador: 0.2,
            ),
          )
        ],
      ),
    );
  }

  Card buildCard(CursoModel curso) {
    return Card(
      elevation: 12.0,
      margin: new EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 6,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Color.fromRGBO(64, 75, 96, 0.5),
        ),
        child: new ListTile(
          leading: Icon(
            Icons.autorenew,
            color: Colors.white,
          ),
          trailing: Icon(
            Icons.arrow_forward_ios_rounded,
            color: Colors.white,
            size: 22,
          ),
          title: Text(curso.nome),
          subtitle: Row(
            children: [
              Expanded(
                child: Container(
                  child: LinearProgressIndicator(
                    backgroundColor: Colors.redAccent,
                    valueColor: AlwaysStoppedAnimation(
                        Colors.greenAccent), //cor preenchida
                    value: curso.indicador, //quanto que a barra progrediu
                  ),
                ),
              ),
              Text(curso.nivel)
            ],
          ),
        ),
      ),
    );
  }
}

class CursoModel {
  String nome;
  String nivel;
  double indicador;
  int preco;
  String conteudo;

  CursoModel(
      {this.nome, this.nivel, this.indicador, this.preco, this.conteudo});
}
