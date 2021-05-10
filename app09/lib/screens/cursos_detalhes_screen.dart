import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/curso_model.dart';

class CursosDetalhesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CursoModel cursoModel = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(64, 75, 96, .9),
        title: Text(cursoModel.nome),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            labelValue('ID'),
            fieldValue(cursoModel.id.toString()),
            espaco(),
            labelValue('Nível'),
            fieldValue(cursoModel.nivel),
            espaco(),
            labelValue('Preço'),
            fieldValue(cursoModel.preco.toString()),
            espaco(),
            labelValue('% Conclusão'),
            fieldValue(cursoModel.percentualConclusao.toString()),
            espaco(),
            labelValue('Conteúdo'),
            fieldValue(cursoModel.conteudo),
            espaco(),
            Center(
              child: ElevatedButton(
                child: Text('Tenho interesse!'),
                style: ElevatedButton.styleFrom(primary: Colors.pinkAccent),
                onPressed: () {
                  var message =
                      'Interesse no curso ${cursoModel.nome} registrado com sucesso';
                  Navigator.pop(
                    context,
                    message,
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.amberAccent,
        child: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  SizedBox espaco() => SizedBox(
        height: 16,
      );

  Widget labelValue(String _label) {
    return Text(
      '$_label:',
      textAlign: TextAlign.left,
      style: TextStyle(
        color: Color.fromRGBO(64, 75, 96, 1),
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.normal,
        fontSize: 18,
      ),
    );
  }

  Widget fieldValue(String _value) {
    return Text(
      _value,
      style: TextStyle(
        color: Color.fromRGBO(64, 75, 96, .9),
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w800,
        fontSize: 20,
      ),
    );
  }
}
