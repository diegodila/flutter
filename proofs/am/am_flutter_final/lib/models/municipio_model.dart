import 'dart:convert';

class MunicipioModel {
  int id;
  String nome;
  String link;
  String url;

  MunicipioModel({
    this.id,
    this.nome,
    this.link,
    this.url,
  });

  factory MunicipioModel.fromJson(String str) =>
      MunicipioModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory MunicipioModel.fromMap(Map<String, dynamic> json) => MunicipioModel(
        id: (json["id"] is int) ? json["id"] : int.parse(json["id"]),
        nome: json["nome"],
        link: json["link"],
        url: json["url"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "nome": nome,
        "link": link,
        "url": url,
      };
}
