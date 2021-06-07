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
        '/am_flutter_final': (context) => MunicipiosScreen(),
      },
      title: 'AM App',
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
