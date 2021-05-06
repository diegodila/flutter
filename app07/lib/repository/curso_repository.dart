import 'package:app07/models/curso_model.dart';

class CursoRepository {
  List<CursoModel> findAll() {
    var lista = [
      new CursoModel(
          id: 1,
          nome: 'Java',
          nivel: 'básico',
          percentualConclusao: 0.719,
          preco: 1000),
      new CursoModel(
          id: 2,
          nome: 'JEE',
          nivel: 'avançado',
          percentualConclusao: 0.712,
          preco: 1000),
      new CursoModel(
          id: 3,
          nome: 'Flutter',
          nivel: 'avançado',
          percentualConclusao: 0.5,
          preco: 1000),
    ];
    return lista;
  } //o findAll é nosso select All, ele retorna todos os cursos então ele retorna uma Lista de objetos,uma lista de CursoModel

  CursoModel findById(int id) {
    return null;
  } // temos os que como resposta da funcão? como retorno?

  void insert(
      CursoModel
          cursoModel) {} //o que precisamos enviar? então temos que passar algo como parametro

  void update(CursoModel cursoModel) {}

  void
      delete() {} //aqui não temos o trabalho de ter ou enviar um obj para deleter, então enviamos somente o id
}

//get and set são não classe model
// data axis object  DAO
//fazemos select, insert, update e delete no bd
//classe Repository tem metodos que fazem interação como o db
//o findAll é nosso select All
// o findById, queremos o detalhes passamos o Id e temos as informações de fato
//O visual studio code identifica a classe e faz o import sozinho
// No java não temos duas classes no mesmo arquivo
