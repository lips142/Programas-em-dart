import 'package:estudo/calculo_peso.dart';
import 'package:estudo/main.dart' as estudo;

import 'calculo_Idade.dart';
import 'carrinho_compras.dart';

main(List<String> arguments) {
  if (arguments[0] == "calculo-idade") {
    print(calculoIdade());
  } else if (arguments[0] == "carrinho-compras") {
    (carrinho());
  } else if (arguments[0] == "calculo-imc") {
    (calculoImc());
  } else {
    print("====== Valor Invalido ====");
  }
}
