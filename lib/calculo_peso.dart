//pegar altura
//pegar Peso
// realizar o calculo
//retornar o imc
import 'dart:io';

void main() {
  calculoImc();
}

calculoImc() {
  print('Digite seu Peso: ');
  var imput2 = stdin.readLineSync();
  var peso = int.parse(imput2!);

  print('Digite sua Altura: ');
  var imput = stdin.readLineSync();
  var altura = double.parse(imput!);

  var calculo = peso / (altura * altura);

  print('====================');

  if (calculo < 18.5) {
    print('Abaixo do Peso Ideal');
  } else if (calculo > 18.5 && calculo < 24.9) {
    print('Peso Normal');
  } else if (calculo > 25 && calculo < 26.99) {
    print('Sobrepeso');
  } else if (calculo > 30 && calculo < 34.9) {
    print('Obesidade Grau I ');
  } else if (calculo > 35 && calculo < 39.9) {
    print('Obesidade Grau II ');
  } else {
    print(' Grau Obesidade III');
  }
}
