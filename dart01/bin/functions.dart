main(List<String> args) {
  bool ehImpar(int numero) {
    return numero.isOdd;
  }

  ehOdd(int numero) {
    return numero.isOdd;
  }

  bool numeroImpar(int numero) => numero.isOdd;

  numImpart(int numero) => numero.isOdd;

  print(numImpart(1));

  printInteger({int aNumber}) {
    print(aNumber);
  }

  int number = 42;
  printInteger(aNumber: number);
  printInteger();
  printInteger(aNumber: 2);
  // printIntenger(number); // Erro de compilação

  printNome(String primeiro, [String segundo, String sobrenome]) {
    print('$primeiro $segundo $sobrenome');
  }

  printNome("Diego");
  printNome("Diego", "Ferreira");
  printNome("Diego", "Ferreira", "Gonçalves");

  void formataTexto(String texto,
      {bool negrito = false, bool italico = false}) {
    print('$texto $negrito $italico');
  }

  formataTexto("Frase qualquer", negrito: true);

  var frutas = ['maça', 'banana', 'laranja'];
  frutas.forEach((i) {
    print('${frutas.indexOf(i)}: $i');
  });
}
