import '../enums.dart';

class Pessoa {
  final String nome;
  final String cpf;
  final DateTime dataDeNascimento;
  final Genero genero;
  final Humor humor;
  late int idade;

  Pessoa(this.nome, this.cpf, this.dataDeNascimento, this.genero, this.humor) {
    idade = calcularIdade();
  }

  void falar(String fala) {
    print('$nome diz: $fala');
  }

  int calcularIdade() {
    DateTime agora = DateTime.now();
    int idade = agora.year - dataDeNascimento.year;
    if (agora.month < dataDeNascimento.month ||
        (agora.month == dataDeNascimento.month &&
            agora.day < dataDeNascimento.day)) {
      idade--;
    }
    return idade;
  }

  void maioridade() {
    if (idade >= 18) {
      print('$nome tem $idade anos, portanto é maior de idade.');
    } else {
      print('$nome tem $idade anos, portanto é menor de idade.');
    }
  }
 
 void termometroDoHumor() {
    switch (humor) {
      case Humor.feliz:
        print('Que bom que você está feliz hoje, Maria.');
        break;
      case Humor.triste:
        print('Pare um pouco e respire, Maria');
        break;
      case Humor.alegre:
        print('Que bom que voce está alegre, Maria');
        break;
      case Humor.cansada:
        print('Pare um pouco e descanse, Maria');
        break;
      default:
        print('Humor desconhecido.');
    }
  }
 
  

}


