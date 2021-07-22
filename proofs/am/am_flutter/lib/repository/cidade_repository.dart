import 'package:am_flutter/model/cidade_model.dart';

class CidadaRepository {
  List<CidadeModel> findAll() {
    var lista = [
      CidadeModel(id: 1, nome: 'SP', link: 'www.sp.com.br/portal'),
      CidadeModel(id: 1, nome: 'SP', link: 'www.sp.com.br/portal'),
      CidadeModel(id: 1, nome: 'SP', link: 'www.sp.com.br/portal'),
      CidadeModel(id: 1, nome: 'SP', link: 'www.sp.com.br/portal'),
      CidadeModel(id: 1, nome: 'SP', link: 'www.sp.com.br/portal'),
      CidadeModel(id: 1, nome: 'SP', link: 'www.sp.com.br/portal'),
      CidadeModel(id: 1, nome: 'SP', link: 'www.sp.com.br/portal'),
      CidadeModel(id: 1, nome: 'SP', link: 'www.sp.com.br/portal'),
      CidadeModel(id: 1, nome: 'SP', link: 'www.sp.com.br/portal'),
      CidadeModel(id: 1, nome: 'SP', link: 'www.sp.com.br/portal'),
      CidadeModel(id: 1, nome: 'SP', link: 'www.sp.com.br/portal'),
    ];

    return lista;
  }
}
