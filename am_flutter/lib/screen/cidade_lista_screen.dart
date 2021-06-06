import 'package:am_flutter/repository/cidade_repository.dart';
import 'package:flutter/material.dart';

class CidadeListScreen extends StatelessWidget {
  const CidadeListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var listaCursos = CidadaRepository().findAll();

    return Container(
      child: ListView.builder(
        itemCount: listaCursos.length,
        itemBuilder: (context, index) {
          // TODO
          return Text(
            listaCursos[index].nome,
          );
        },
      ),
    );
  }
}
