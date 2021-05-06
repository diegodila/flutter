import 'package:flutter/material.dart';

class App06 extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nice ;) ListViews',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CursosPage(title: 'Nice ;) ListViews'),
      //home: ProdutosPage(),
    );
  }
}

class CursosPage extends StatefulWidget {
  CursosPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _CursosPageState createState() => _CursosPageState();
}

class _CursosPageState extends State<CursosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(64, 75, 96, .9),
        title: Text(widget.title),
      ),
      body: ListView(
        children: <Widget>[
          cursoCartao(
            Curso(
              nome: 'Java Web',
              nivel: 'Intermediário',
              indicadorNivel: 0.5,
              preco: 500,
            ),
          ),
          cursoCartao(
            Curso(
              nome: 'Xamarin',
              nivel: 'Avançado',
              indicadorNivel: 0,
              preco: 900,
            ),
          ),
          cursoCartao(
            Curso(
              nome: 'Objective C',
              nivel: 'Ultra Avançado',
              indicadorNivel: 0.1,
              preco: 2999,
            ),
          ),
          cursoCartao(
            Curso(
              nome: 'C#',
              nivel: 'Iniciante',
              indicadorNivel: 1,
              preco: 299,
            ),
          ),
        ],
      ),
    );
  }

  Card cursoCartao(Curso curso) {
    return Card(
      elevation: 12.0,
      margin: new EdgeInsets.symmetric(
        horizontal: 12.0,
        vertical: 6.0,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Color.fromRGBO(64, 75, 96, .9),
        ),
        child: cursoListTile(curso),
      ),
    );
  }

  ListTile cursoListTile(Curso curso) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      leading: Container(
        padding: EdgeInsets.only(right: 12.0),
        decoration: new BoxDecoration(
          border: new Border(
            right: new BorderSide(
              width: 1.0,
              color: Colors.white24,
            ),
          ),
        ),
        child: Icon(
          Icons.autorenew,
          color: Colors.white,
        ),
      ),
      title: Text(
        curso.nome,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Row(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Container(
              child: LinearProgressIndicator(
                backgroundColor: Color.fromRGBO(209, 224, 224, 0.2),
                value: curso.indicadorNivel,
                valueColor: AlwaysStoppedAnimation(Colors.green),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Text(
                curso.nivel,
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      ),
      trailing: Icon(
        Icons.keyboard_arrow_right,
        color: Colors.white,
        size: 30.0,
      ),
      onTap: () {
        print('Navegar');
      },
    );
  }
}

class Curso {
  String nome;
  String nivel;
  double indicadorNivel;
  int preco;
  String conteudo;

  Curso({
    this.nome,
    this.nivel,
    this.indicadorNivel,
    this.preco,
    this.conteudo,
  });
}
