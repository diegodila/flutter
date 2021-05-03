import 'package:app04/alter.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Alter());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.all(16.0),
          child: Card(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextCustomized("Diego"),
                  TextCustomized("Gabriela"),
                  TextCustomized("BROOKÃO da nação"),
                  textBox("Queeeeisuuu?"),
                  textBox("Onde tu aprendeu isso"),
                  textBox("O que é Brokão da Nation?")
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget textBox(String param) {
    return Text(
      param,
      style: TextStyle(
        color: Colors.deepOrangeAccent,
        fontSize: 30,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w100,
      ),
    );
  }
}

class TextCustomized extends StatelessWidget {
  String value;

  TextCustomized(this.value);

  @override
  Widget build(BuildContext context) {
    return Text(
      value,
      style: TextStyle(
        color: Colors.pinkAccent,
        fontSize: 30,
        fontStyle: FontStyle.italic,
      ),
    );
  }
}

//Container é caixa para org melhor os elements, e podemos colocar um filho no container que no caso é o Card ListView é um dos elementos mais usados, no flutter é normal ter um elemento dentro do outro
