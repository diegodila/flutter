import 'package:flutter/material.dart';
import 'package:app09/screens/cursos_detalhes_screen.dart';
import 'package:app09/screens/cursos_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cursos App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: CursosScreen(),
      home: CursosDetalhesScreen(),
    );
  }
}

/*
theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
*/
