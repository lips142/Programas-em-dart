import 'dart:io';

void main() {
  //perguntar o nome da pessoa
  // se for maior que 18 printar ( Você é maior de idade )
  //se não, (você é menor de idade)
  calculoIdade();
}

calculoIdade() {
  print(' ======= Digite sua idade  ====== : ');
  var input = stdin.readLineSync();

  var idade = int.parse(input!);

  if (idade >= 18) {
    print('Você é Maior de idade!');
  } else {
    print("Você é menor de idade");
  }
}
