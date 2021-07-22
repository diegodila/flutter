import 'package:am_flutter_final/screen/municipios_detalhes.dart';
import 'package:flutter/material.dart';
import 'package:am_flutter_final/screen/municipios_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/home',
      routes: {
        '/home': (context) => MunicipiosScreen(),
        '/details': (context) => MunicipiosDetalhes(),
      },
      title: 'AM App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MunicipiosScreen(),
    );
  }
}

/*
theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
*/
