import 'package:lista_cursos/models/curso_model.dart';

import 'database_helper.dart';

class CursoRepository {
  DatabaseHelper _databaseHelper;

  CursoRepository() {
    _databaseHelper = new DatabaseHelper();
  }

  Future<int> create(CursoModel cursoModel) async {
    var connection = await _databaseHelper.connection;
    var result = await connection.insert(
      "CursoModel",
      cursoModel.toJson(),
    );
    return result;
  }

  Future<List<CursoModel>> findAllAsync() async {
    var connection = await _databaseHelper.connection;
    var result = await connection.query(
      'CursoModel',
      columns: [
        "id",
        "nome",
        "nivel",
        "percentualConclusao",
        "preco",
        "conteudo"
      ],
    );

    List<CursoModel> listaCurso = [];
    for (Map cursoJson in result) {
      listaCurso.add(new CursoModel.fromJson(cursoJson));
    }

    return listaCurso;
  }
}
