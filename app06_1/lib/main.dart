import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Carro c1 = new Carro(
    nome: 'Subaru',
    conteudo: 'avançado',
    indicador: 0.2,
    nivel: 'inter',
  );
  Carro c2 = new Carro(
    nome: 'Kombi',
    conteudo: 'avançado',
    indicador: 0.8,
    nivel: 'inter',
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Brook'),
        backgroundColor: Colors.deepOrange,
      ),
      body: ListView(
        children: [
          buildCard(c1),
          buildCard(c2),
        ],
      ),
    );
  }

  Card buildCard(Carro carro) {
    return Card(
      elevation: 12.0,
      margin: new EdgeInsets.symmetric(
        horizontal: 14,
        vertical: 10,
      ),
      child: Container(
        child: ListTile(
          trailing: Icon(
            Icons.ac_unit_rounded,
            size: 20,
          ),
          leading: Icon(
            Icons.dangerous,
            size: 20,
          ),
          subtitle: Row(
            children: [
              Text(carro.conteudo),
              Expanded(
                child: Container(
                  margin: new EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 6,
                  ),
                  child: LinearProgressIndicator(
                    backgroundColor: Colors.redAccent,
                    minHeight: 7,
                    valueColor: AlwaysStoppedAnimation(
                      Colors.black87,
                    ),
                    value: carro.indicador,
                  ),
                ),
              ),
            ],
          ),
          title: Text(
            carro.nome,
          ),
        ),
      ),
    );
  }
}

class Carro {
  String nome;
  String nivel;
  double? indicador;
  int? preco;
  String conteudo;

  Carro({
    this.nome = 'Diego',
    required this.nivel,
    this.indicador,
    this.preco,
    required this.conteudo,
  });
}
