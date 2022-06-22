import 'dart:io';

void main() {
  carrinho();
}

carrinho() {
  List<String> produtos = [];

  while (true) {
    print('==== Digite Um Produto ====');
    String? text = stdin.readLineSync();

    if (text == "sair") {
      print("====== Terminando o Programa =======");
      print("A Seguinte Lista Foi Adicionada: ");

      break;
    }
    // campo para listar os produtos por numero
    if (text == "imprimir") {
      imprimir(produtos);

      // Campo para remover um produto da lista
    } else if (text == "remover") {
      print("Qual Item deseja remover? ");

      remover(produtos);

      print("Item Removido com Sucesso!");

      //campo para adicionar os produtos a lista
    } else {
      produtos.add(text!);
      print("\x1B[2J\x1B[0;0H");
    }
  }
  print(produtos);
}

imprimir(produtos) {
  for (var i = 0; i < produtos.length; i++) {
    print("Item $i - ${produtos[i]}");
  }
}

remover(produtos) {
  for (var i = 0; i < produtos.length; i++) {
    print("Item $i - ${produtos[i]}");
  }
  print("Digite um numero de Acordo com o produto Desejado");
  int item = int.parse(stdin.readLineSync()!);
  produtos.removeAt(item);
}
