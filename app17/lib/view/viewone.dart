import 'dart:math';

import 'package:app17/view/viewTwo.dart';
import 'package:flutter/material.dart';

class ViewOne extends StatefulWidget {
  const ViewOne({Key? key}) : super(key: key);

  @override
  _ViewOneState createState() {
    print('ViewOne 1 - createState');
    return _ViewOneState();
  }
}

class _ViewOneState extends State<ViewOne> {
  int valor = 0;

  @override
  void initState() {
    print('ViewOne 2 - initstate');

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print('ViewOne 3 - build');

    valor = Random().nextInt(100);

    return Scaffold(
      appBar: AppBar(
        title: Text('Tela 1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('1 - $valor'),
            TextButton(
              child: Text('Reload'),
              onPressed: () {
                setState(() {});
              },
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.forward),
        onPressed: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const ViewTwo(),
            ),
          );
        },
      ),
    );
  }

  @override
  void deactivate() {
    print('ViewOne 4 - deactivate');
    super.deactivate();
  }

  @override
  void dispose() {
    print('ViewOne 5 - dispose');
    super.dispose();
  }
}
