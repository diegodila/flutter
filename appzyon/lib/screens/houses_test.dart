import 'package:flutter/material.dart';

class HouseTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Card(
        clipBehavior: Clip.antiAlias,
        child: Row(
          children: [
            Column(
              children: [
                Text('test'),
                Text('test2'),
              ],
            ),
            Column(
              children: [
                Text('test3'),
                Text('test4'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
