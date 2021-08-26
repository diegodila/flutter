import 'package:flutter/material.dart';

class ViewTwo extends StatefulWidget {
  const ViewTwo({Key? key}) : super(key: key);

  @override
  _ViewTwoState createState() => _ViewTwoState();
}

class _ViewTwoState extends State<ViewTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tela 2'),
      ),
      body: const Center(
        child: Text('2'),
      ),
    );
  }
}
