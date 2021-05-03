import 'package:flutter/material.dart';

void main() {
  runApp(MyApp2());
}

class MyApp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Card(
        child: Column(
          children: [
            ListTile(
              title: Text(
                '9999 Super Street',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              subtitle: Text('Name City, EST 99999'),
              leading: Icon(
                Icons.restaurant_menu,
                color: Colors.blue[500],
              ),
            ),
            ListTile(
              title: Text(
                '9999 Super Street',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              subtitle: Text('Name City, EST 99999'),
              leading: Icon(
                Icons.restaurant_menu,
                color: Colors.blue[500],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
