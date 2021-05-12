class Point {
  int x, y;
// Sintaxe para setar x e y
  Point(this.x, this.y);
}

class Pessoa {
  String nome;
  Pessoa.fromJson(String jsonContent) {
    print('executou o fromJson de Pessoa');
  }
}

void main() {
  // var p1 = new Person(); // Erro de compilação
  var p2 = Pessoa.fromJson("{valor: 'texto'}");
}
