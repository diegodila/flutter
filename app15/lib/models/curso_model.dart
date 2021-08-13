import 'dart:convert';

class CursoModel {
  int id;
  String nome;
  String nivel;
  double percentualConclusao;
  int preco;
  String conteudo;

  CursoModel({
    this.id,
    this.nome,
    this.nivel,
    this.percentualConclusao,
    this.preco,
    this.conteudo,
  });

  CursoModel cursoModelFromMap(String str) =>
      CursoModel.fromMap(json.decode(str));

  String cursoModelToMap(CursoModel data) => json.encode(data.toMap());

  factory CursoModel.fromMap(Map<String, dynamic> json) => CursoModel(
        id: json["id"],
        nome: json["nome"],
        nivel: json["nivel"],
        percentualConclusao: json["percentualConclusao"].toDouble(),
        preco: json["preco"],
        conteudo: json["Conteudo"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "nome": nome,
        "nivel": nivel,
        "percentualConclusao": percentualConclusao,
        "preco": preco,
        "Conteudo": conteudo,
      };
}
