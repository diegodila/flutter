import 'package:app05/app05_1.dart';
import 'package:app05/ful.dart';
import 'package:app05/less.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyAppFul());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: _appBar(),
        body: _bodyCenter(),
        floatingActionButton: _floatingActionButton(),
        drawer: _drawer('Menu esquerdo'),
        persistentFooterButtons: _persistentFooterButtons(),
        bottomNavigationBar: _bottomNavigationBar(),
        endDrawer: _drawer('Menu direito'),
      ),
    );
  }

  BottomNavigationBar _bottomNavigationBar() {
    return BottomNavigationBar(
      currentIndex: 1,
      fixedColor: Colors.teal,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('home'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          title: Text('Search'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add_box),
          title: Text('Add'),
        ),
      ],
      onTap: (value) {
        print('Botão clicado $value');
      },
    );
  }

  List<Widget> _persistentFooterButtons() {
    return [
      RaisedButton(
        elevation: 10.0,
        color: Colors.green,
        child: Icon(Icons.add),
        onPressed: () {
          print('+');
        },
      ),
      RaisedButton(
        elevation: 10.0,
        color: Colors.red,
        child: Icon(Icons.remove_circle),
        onPressed: () {
          print('+');
        },
      ),
    ];
  }

  Drawer _drawer(String texto) {
    return Drawer(
      elevation: 10.0,
      child: Center(
        child: Text(texto),
      ),
    );
  }

  FloatingActionButton _floatingActionButton() {
    return FloatingActionButton(
      elevation: 40.0,
      child: Icon(Icons.add),
      onPressed: () {
        print('_floatingActionButton');
      },
    );
  }

  Center _bodyCenter() {
    return Center(
      child: Text(
        'Fiap',
        style: TextStyle(
          color: Colors.purpleAccent,
          fontSize: 44,
          fontFamily: 'RobotoMono',
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      title: Text('Diego Scaffold'),
    );
  }
}
