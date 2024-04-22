import 'pessoa.dart';
import 'produto.dart';
import 'revendedor.dart';

class Cliente extends Pessoa {
  late double? dinheiro;
  List<Produto> produtosComprados = [];

  Cliente(super.nome, super.cpf, super.dataDeNascimento, super.genero,
      {this.dinheiro});

  void adicionarDinheiro(double valor) {
    this.dinheiro = (this.dinheiro ?? 0) + valor;
  }

  void falar(String fala) {
    print("Cliente $nome diz: $fala");
  }

  void comprarProduto(Produto produto, Revendedor revendedor) {
    if (dinheiro != null && dinheiro! >= produto.valor) {
      revendedor.venderProduto(produto);
      dinheiro = dinheiro! - produto.valor;
      produtosComprados.add(produto);
    } else {
      print(
          '$nome não possui dinheiro suficiente para comprar o produto ${produto.nome}');
    }
  }

  void ordenarProdutosComprados() {
    produtosComprados.sort((a, b) {
      int comp = a.nome.compareTo(b.nome);
      if (comp != 0) return comp;
      return 0;
    });
  }

  void verProdutosComprados() {
    ordenarProdutosComprados();
    print("Produtos comprados por $nome:");
    produtosComprados.forEach((element) {
      print("${element.nome} - ${element.valor}");
    });
  }
}
