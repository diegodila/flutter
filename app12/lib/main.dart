import 'package:flutter/material.dart';
import 'package:lista_cursos/screens/cursos_detalhes_screen.dart';
import 'package:lista_cursos/screens/cursos_novo_screen.dart';
import 'package:lista_cursos/screens/cursos_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/home',
      routes: {
        '/home': (context) => CursosScreen(),
        '/cursos_detalhes': (context) => CursosDetalhesScreen(),
        '/cursos_lista': (context) => CursosScreen(),
        '/curso_novo': (context) => CursoNovoScreen(),
      },
      title: 'Cursos App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

/*
theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
*/
