import 'package:flutter/material.dart';
import 'package:ps_flutter_final/screens/bootcamp_details.dart';
import 'package:ps_flutter_final/screens/bootcamp_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/home',
      routes: {
        '/home': (context) => BootcampScreen(),
        '/bootcamp_details': (context) => BootcampDetails(),
      },
      title: 'Bootcamp App',
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
