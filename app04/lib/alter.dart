import 'package:app04/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Alter extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.all(16.0),
          color: Colors.deepPurple,
          child: Card(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextCustomized("Diego"),
                  TextCustomized("Gabriela"),
                  TextCustomized("BROOKÃO da nação"),
                  textBox("Queeeeisuuu?"),
                  textBox("Onde tu aprendeu isso"),
                  textBox("O que é Brokão da Nation?"),
                  Text(
                    "Gabrielinha da Vovó",
                    style: TextStyle(
                      fontSize: 35,
                      color: Colors.pinkAccent,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "aperte",
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.pinkAccent,
                        ),
                      ),
                      Slider(
                          value: 1.toDouble(),
                          min: 1.0,
                          max: 10.0,
                          activeColor: Colors.blue,
                          inactiveColor: Colors.yellowAccent,
                          label: "Testando",
                          onChanged: (double newValue) {}),
                    ],
                  ),
                  Expanded(
                      child: Align(
                    alignment: FractionalOffset.bottomCenter,
                    child: ButtonBar(
                      alignment: MainAxisAlignment.end,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          width: 150,
                          child: OutlineButton(
                            child: const Text("aperte1"),
                            textColor: Colors.amberAccent,
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 150,
                          child: FlatButton(
                            color: Colors.blue,
                            child: const Text("aperte2"),
                            textColor: Colors.white,
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(10.0),
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget textBox(String param) {
    return Text(
      param,
      style: TextStyle(
        color: Colors.deepOrangeAccent,
        fontSize: 30,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w100,
      ),
    );
  }
}
