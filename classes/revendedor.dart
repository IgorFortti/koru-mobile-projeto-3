import '../enums.dart';
import 'pessoa.dart';
import 'produto.dart';

class Revendedor extends Pessoa {
  final String matricula;
  List<Produto> produtosVendidos = [];
  double porcentagemLucro;

  Revendedor(super.nome, super.cpf, super.dataDeNascimento, super.genero, super.humor,
      this.matricula, this.produtosVendidos, this.porcentagemLucro);

  @override
  void falar(String mensagem) {
    String pronome;
    switch (genero) {
      case Genero.Masculino:
        pronome = 'o';
        break;

      case Genero.Feminino:
        pronome = 'a';
        break;
      default:
        pronome = 'a pessoa';
    }

    print('Revendedor $nome diz: $mensagem');
  }

  void venderProduto(Produto produto) {
    try {
      produto.realizarVenda();
      produtosVendidos.add(produto);
    } catch (e) {
      throw e;
    }
  }

  double calcularTotalVendido() {
    double total = 0.0;
    for (Produto produto in produtosVendidos) {
      total += produto.verReceitaGerada();
    }
    return total;
  }

  double calcularMediaProdutosVendidos() {
    if (produtosVendidos.isEmpty) {
      return 0.0;
    }
    double total = calcularTotalVendido();
    return total / produtosVendidos.length;
  }

  double calcularLucro() {
    double totalVendido = calcularTotalVendido();
    return totalVendido * (porcentagemLucro / 100);
  }

  void verResumo() {
    double totalVendido = calcularTotalVendido();
    double mediaProdutosVendidos = calcularMediaProdutosVendidos();
    double lucroObtido = calcularLucro();

    print(
        'O total vendido por João foi ${totalVendido.toStringAsFixed(2)} reais '
        'e a média aritmética de valor dos produtos vendidos é ${mediaProdutosVendidos.toStringAsFixed(2)} reais. '
        'O lucro recebido foi de ${lucroObtido.toStringAsFixed(2)} reais.');
  }
}
