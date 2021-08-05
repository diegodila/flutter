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

  CursoModel cursoModelFromJson(String str) =>
      CursoModel.fromJson(json.decode(str));

  String cursoModelToJson(CursoModel data) => json.encode(data.toJson());

  factory CursoModel.fromJson(Map<String, dynamic> json) => CursoModel(
        id: json["id"],
        nome: json["nome"],
        nivel: json["nivel"],
        percentualConclusao: json["percentualConclusao"].toDouble(),
        preco: json["preco"],
        conteudo: json["Conteudo"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "nome": nome,
        "nivel": nivel,
        "percentualConclusao": percentualConclusao,
        "preco": preco,
        "Conteudo": conteudo,
      };
}
