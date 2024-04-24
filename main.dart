// Importações dos arquivos que serão utilizados
import 'classes/cliente.dart';
import 'classes/pessoa.dart';
import 'classes/produto.dart';
import 'classes/revendedor.dart';
import 'enums.dart';
import 'utils.dart';

/**
 * RECOMENDAÇÕES DA TUTORA
 * 
 * Arquivo de testes e execução do sistema criado.
 * Os testes para o sistema se darão todos através de prints no console.
 * 
 * Abaixo você encontrará o método main, que é o método principal que será executado.
 * 
 * Para executar esse arquivo, digite o seguinte comando no terminal: dart run main.dart
 * Outra alternativa é instalar a extensão Dart no seu VS Code.
 * Isso fará aparecer um botão tipo "play" no canto direito superior. Basta clicar para executar o projeto.
 * 
 * Dentro do método main, vocês encontrarão indicações para criar objetos das classes criadas e executar os métodos criados.
 * Recomenda-se que essas declarações e execuções sejam feitas a medida que vocês forem criando as classes e métodos pedidos,
 * pois isso servirá para testar se o que você fez está funcionando.
 * 
 * Não se prendam apenas aos comentários e recomendações. Façam todos os testes que quiserem fazer.
 * 
 * Existe um método "pularLinha" que foi criado dentro do arquivo utils.
 * Caso queiram, utilizem-no para pular linha entre um bloco de testes e outro,
 * apenas por questões de organização e melhor visualização das saídas.
 * Para executá-lo, basta chamá-lo em qualquer ponto do método main, dessa maneira:
 * pularLinha();
 */

main() {
  /* Declaração de objetos Produto */

  // Declare aqui alguns objetos do tipo Produto...
  // Exemplo: Produto produtoA = Produto("Colônia Floratta Flores Secretas 75ml", 104.90, 3);
  var produto = Produto("Colônia Floratta Flores Secretas 75ml", 104.90, 5);
  print("Nome: ${produto.nome}");
  print("Valor: ${produto.valor}");
  print("Quantidade em Estoque: ${produto.qtdEmEstoque}");

//Realizando venda do produto
  produto.realizarVenda();
  print('Estoque após venda: ${produto.qtdEmEstoque}');

//Verificando receita gerada pelo produto
  print('Receita gerada pelo produto: ${produto.verReceitaGerada()}');

// Tentando realizar outra venda quando não há estoque
  for (int i = 0; i < 10; i++) {
    produto.realizarVenda();
  }

  pularLinha();
  /* Testes da classe Produto */

  // Teste o método realizarVenda algumas vezes...
  // Exemplo: produtoA.realizarVenda();
  // Saída esperada 1: Compra de um produto Colônia Floratta Flores Secretas 75ml realizada com sucesso!
  // Saída esperada 2: No momento não possuímos o produto Colônia Floratta Flores Secretas 75ml em estoque.

  // Teste o método verReceitaGerada algumas vezes...
  // Exemplo: print(produtoA.verReceitaGerada());

  // pularLinha();

  /* ------------------------------------------ */

  /* Declaração de objetos Pessoa */

  // Declare aqui alguns objetos do tipo Pessoa...

  // Exemplo: Pessoa pessoaA = Pessoa('Maria', '12345678900', 1994);

  /* Testes da classe Pessoa */

  var pessoa =
      Pessoa('Maria', '12345678900', DateTime(1994, 10, 19), Genero.Feminino, Humor.alegre);

  // Teste o método falar algumas vezes...
  // Exemplo: pessoaA.falar('Oi, tudo bem?');
  // Saída esperada: Maria diz: Oi, tudo bem?
  pessoa.falar('Oi, tudo bem?');

  // Teste o método maioridade algumas vezes...
  // Exemplo: pessoaA.maioridade();
  // Saída esperada 1: Maria tem 30 anos, portanto é maior de idade.
  // Saída esperada 2: João tem 14 anos, portanto é menor de idade.
  pessoa.maioridade();
  // pularLinha();
  pularLinha();

  /* ------------------------------------------ */

  var cliente1 = Cliente(
      "Gon Freecs", "12345678950", DateTime(1999, 10, 19), Genero.Outros , Humor.cansada);

  cliente1.maioridade();
  cliente1.adicionarDinheiro(100);
  print(cliente1.dinheiro);
  cliente1.falar("Primeiro vem pedra");

  var cliente2 = Cliente(
      "Killua Zoldyck", "44346795175", DateTime(2007, 1, 19), Genero.Feminino, Humor.triste,
      dinheiro: 1000000.99);

  cliente2.maioridade();
  cliente2.adicionarDinheiro(1300);
  print(cliente2.dinheiro);
  cliente2.falar("KOROSU!!!");
}
