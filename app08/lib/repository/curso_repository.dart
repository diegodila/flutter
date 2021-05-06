import 'package:app08/models/curso_model.dart';

class CursoRepository {
  Future<List<CursoModel>> findAllAsync() {
    //acessar o db
    //select
    //carregar a lista

    return null;
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
