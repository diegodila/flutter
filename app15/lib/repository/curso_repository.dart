import 'package:lista_cursos/models/curso_model.dart';

import 'database_helper.dart';

class CursoRepository {
  // Instancia do Database Helper
  DatabaseHelper _databaseHelper;

  // Construtor
  CursoRepository() {
    _databaseHelper = new DatabaseHelper();
  }

  Future<List<CursoModel>> findAllAsync() async {
    var connection = await _databaseHelper.connection;
    var result = await connection.query(
      'CursoModel',
      columns: [
        'id',
        'nome',
        'nivel',
        'percentualConclusao',
        'preco',
        'conteudo'
      ],
    );

    List<CursoModel> listaCursos = [];
    for (Map cursoJson in result) {
      CursoModel c = new CursoModel.fromMap(cursoJson);
      listaCursos.add(c);
    }

    return listaCursos;
  }

  Future<int> create(CursoModel cursoModel) async {
    var connection = await _databaseHelper.connection;
    var result = await connection.insert(
      'CursoModel',
      cursoModel.toMap(),
    );
    return result;
  }
}
