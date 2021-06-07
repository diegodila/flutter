import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CursoNovoScreen extends StatefulWidget {
  @override
  _CursoNovoScreenState createState() => _CursoNovoScreenState();
}

class _CursoNovoScreenState extends State<CursoNovoScreen> {
  var formKey = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var listaNiveis = ['basico', 'intermediario', 'avançado'];
    //var listaniveis = nivelRepository().findAll();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text("Novo Curso"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Center(
              child: Column(
                children: [
                  TextFormField(
                    decoration: new InputDecoration(
                      icon: Icon(Icons.text_format),
                      hintText: 'Digite o nome do curso',
                      labelText: 'Nome do curso',
                    ),
                    keyboardType: TextInputType.text,
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Digite o nome do curso';
                      } else if (value.length < 2) {
                        return 'Nome do curso inválido';
                      }
                      return null;
                    },
                    onSaved: (newValue) {
                      print(newValue);
                    },
                    onChanged: (value) {
                      print(value);
                    },
                  ),
                  DropdownButtonFormField(
                    decoration: new InputDecoration(
                      alignLabelWithHint: true,
                      icon: Icon(Icons.live_help_outlined),
                      hintText: 'Selecione o nível',
                      labelText: 'Nivel',
                    ),
                    items: listaNiveis.map(
                      (valorItem) {
                        return DropdownMenuItem(
                          child: Text(valorItem),
                          value: valorItem,
                        );
                      },
                    ).toList(),
                    validator: (value) {
                      if ((value == null)) {
                        return 'Selecione o nível do curso!';
                      }
                    },
                    onChanged: (value) {
                      print('trocando');
                    },
                    onSaved: (newValue) {
                      print("salvando");
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
