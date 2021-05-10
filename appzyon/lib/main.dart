import 'package:appzyon/screens/houses_description_screen.dart';
import 'package:appzyon/screens/houses_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/home',
      routes: {
        '/home': (context) => HousesScreen(),
        '/house_description': (context) => HousesDescriptionScreen(),
        '/house_lists': (context) => HousesScreen(),
      },
      title: 'Zyon App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HousesScreen(), //import da tela que estamos construindo
    );
  }
}
