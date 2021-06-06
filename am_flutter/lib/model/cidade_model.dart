import 'package:flutter/material.dart';

class CidadeModel {
  late int id;
  late String nome;
  late String link;
  late Icon icon;

  CidadeModel({
    this.id = 0,
    this.icon = const Icon(Icons.ac_unit),
    this.nome = '',
    this.link = '',
  });
}
