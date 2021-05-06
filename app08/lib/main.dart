import 'package:flutter/material.dart';
import 'package:app08/screens/cursos_screen.dart';

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
      home: CursosScreen(),
    );
  }
}

/*
theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
*/
