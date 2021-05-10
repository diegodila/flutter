import 'package:flutter/material.dart';
import 'package:app09/screens/cursos_detalhes_screen.dart';
import 'package:app09/screens/cursos_screen.dart';

import 'screens/cursos_detalhes_screen.dart';
import 'screens/cursos_screen.dart';
import 'screens/cursos_screen.dart';
import 'screens/cursos_screen.dart';

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
        '/curso_detalhes': (context) => CursosDetalhesScreen(),
        '/cursos_lista': (context) => CursosScreen(),
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
