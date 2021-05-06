import 'dart:math';

import 'package:asyncs/asyncs.dart' as asyncs;

int aleatorio() {
  Random random = new Random();
  int randomNumber = random.nextInt(5);
  return randomNumber;
}

void main(List<String> arguments) async {
  await print1();
  await print2();
  await print3();
}

Future<void> print1() async {
  await Future.delayed(Duration(seconds: aleatorio()), () {
    print(11.toString());
  }); //linha assincrona
  //para exec a linha 13 preciso, da exec da linha 10
/*
o await faz a linha esperar, ate a reposta para exec o restante 
*/
  await Future.delayed(Duration(seconds: aleatorio()), () {
    print(12.toString());
  });

  await Future.delayed(Duration(seconds: aleatorio()), () {
    print(13.toString());
  });
}

Future<void> print2() async {
  await Future.delayed(Duration(seconds: aleatorio()), () {
    print(21.toString());
  }); //linha assincrona
  //para exec a linha 13 preciso, da exec da linha 10
/*
o await faz a linha esperar, ate a reposta para exec o restante 
*/
  await Future.delayed(Duration(seconds: aleatorio()), () {
    print(22.toString());
  });

  await Future.delayed(Duration(seconds: aleatorio()), () {
    print(23.toString());
  });
}

Future<void> print3() async {
  await Future.delayed(Duration(seconds: aleatorio()), () {
    print(31.toString());
  }); //linha assincrona
  //para exec a linha 13 preciso, da exec da linha 10
/*
o await faz a linha esperar, ate a reposta para exec o restante 
*/
  await Future.delayed(Duration(seconds: aleatorio()), () {
    print(32.toString());
  });

  await Future.delayed(Duration(seconds: aleatorio()), () {
    print(33.toString());
  });
}
