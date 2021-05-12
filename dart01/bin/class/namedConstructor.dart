class Pessoa {
  String nome;
  Pessoa.fromJson(Map data) {
    print('in Person');
  }
}

class Empregado extends Pessoa {
// Pessoa não tem construtor padrão, ;
// É obrigatório chamar o construtor fromJson.
  Empregado.fromJson(Map data) : super.fromJson(data) {
    print('in Employee');
  }
}

main(List<String> args) {
  var a = new Empregado.fromJson({"sasdsd": "ss", "ssd": "sddsd"});

  print(a);
}
