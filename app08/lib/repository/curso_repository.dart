import 'package:app08/models/curso_model.dart';
import 'package:app08/repository/database.dart';

class CursoRepository {
  Future<List<CursoModel>> findAllAsync() async {
    var db = Database();
    await db.createDatabase(); // fake

    List<CursoModel> listaCursos = findAll();
    //acessar o db
    //select
    //carregar a lista

    return new Future.value(listaCursos);
  }

  List<CursoModel> findAll() {
    return <CursoModel>[
      new CursoModel(
          id: 1,
          nome: 'Java',
          nivel: 'Básico',
          percentualConclusao: 99,
          preco: 1000),
      new CursoModel(
          id: 1,
          nome: 'J2EE',
          nivel: 'Avançado',
          percentualConclusao: 99,
          preco: 1000),
      new CursoModel(
          id: 1,
          nome: 'J2EE',
          nivel: 'Avançado',
          percentualConclusao: 99,
          preco: 1000),
      new CursoModel(
          id: 1,
          nome: 'J2EE',
          nivel: 'Avançado',
          percentualConclusao: 99,
          preco: 1000),
      new CursoModel(
          id: 1,
          nome: 'J2EE',
          nivel: 'Avançado',
          percentualConclusao: 99,
          preco: 1000),
      new CursoModel(
          id: 1,
          nome: 'J2EE',
          nivel: 'Avançado',
          percentualConclusao: 99,
          preco: 1000),
      new CursoModel(
          id: 1,
          nome: 'J2EE',
          nivel: 'Avançado',
          percentualConclusao: 99,
          preco: 1000),
    ];
  }

  CursoModel findById(int id) {
    return null;
  }

  void insert(CursoModel cursoModel) {}

  void update(CursoModel cursoModel) {}

  void delete(int idCurso) {}
}
