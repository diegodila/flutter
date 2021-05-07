import 'package:flutter/material.dart';

class PropertiesScreen extends StatefulWidget {
  @override
  _PropertiesScreenState createState() => _PropertiesScreenState();
}

class _PropertiesScreenState extends State<PropertiesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        elevation: 0.1,
        backgroundColor: Colors.redAccent,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(.60),
        selectedFontSize: 14,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            title: Text('home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.house,
              color: Colors.white70,
            ),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_rounded,
              color: Colors.white70,
            ),
            title: Text('Favorites'),
          ),
        ],
      ),
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text(
          'ZyonImoveis',
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontWeight: FontWeight.normal),
        ),
      ),
    );
  }
}
