//Interable é uma coleção de elementos e uma classe abastrata

void main() {
  // escolherMeioTransporte(1);
  Transporte.tiposDeTransporte();
  escolherMeioTransporteEnum(Transporte.carro);
  Set<String> registrosVisitados = <String>{};
  registrosVisitados = registrarDestinos("São Paulo", registrosVisitados);
  registrosVisitados = registrarDestinos("Coronel freitas", registrosVisitados);
  registrosVisitados = registrarDestinos("Xape", registrosVisitados);
  registrosVisitados = registrarDestinos("São Paulo", registrosVisitados);
  print(registrosVisitados);

  //map seria um dicionario em outras linguagens de programação
  Map<String, double> registrarPrecos = {};

  registrarPrecos["São Paulo"] = 1200;
  registrarPrecos["Coronel Freitas"] = 200;
  registrarPrecos["xape"] = 4200;
  // print(registrarPrecos["xape"]);
  registrarPrecos.remove("São Paulo");
  // print(registrarPrecos);

  // Pessoa pessoa1 = Pessoa("Eduardo", 19, true);
  // print(pessoa1.idade);

  //var pode receber qualquer tipo, mas nao pode ser mudada em tempo de execução
  //dynamic pode mudar o tipo em tempo de execução
  //var e dynamic nao precisa de inicialização de variavel
}

//nao recomendado
// void escolherMeioTransporte(int locomocao) {
//   if (locomocao == 0) {
//     print("Vou de CARRo para aventura");
//   } else if (locomocao == 1) {
//     print("Vou de BIKE para aventura");
//   } else {
//     print("Vou para aventura");
//   }
// }

void escolherMeioTransporteEnum(Transporte locomocao) {
  // if (locomocao == Transporte.carro) {
  //   print("Vou de CARRo para aventura");
  // } else if (locomocao == Transporte.bike) {
  //   print("Vou de BIKE para aventura");
  // } else {
  //   print("Vou para aventura");
  // }

  switch (locomocao) {
    case Transporte.carro:
      print("Vou de carro para aventura");
      break;
    case Transporte.bike:
      print("Vou de carro para aventura");
      break;
    case Transporte.andando:
      print("Vou de Trem para aventura");
      break;
    case Transporte.skate:
      print("Vou de skate para aventura");
      break;
    case Transporte.aviao:
      print("Vou de aviao para aventura");
      break;
    case Transporte.patins:
      print("Vou de patins para aventura");
      break;
    case Transporte.trem:
      print("Vou de trem para aventura");
      break;
    default:
      print("Nao achei a categoria q vc vai passear");
  }
}

//set nao deixar duplicar o mesmo valor ex: dentro de uma lista
registrarDestinos(String destino, Set<String> banco) {
  banco.add(destino);
  return banco;
}

void escolherMeioTransporte(Transporte locomocao) {}

enum Transporte {
  carro,
  bike,
  andando,
  skate,
  aviao,
  patins,
  trem;

  static void tiposDeTransporte() {
    print(
        "Tipos de transportes: carro, bike, andando e skate, aviao, patins e trem.");
  }
}

class Pessoa {
  String nome;
  int idade;
  bool estaAutenticada;

  Pessoa(this.nome, this.idade, this.estaAutenticada);

  Map<String, dynamic> toMap() {
    return {
      "nome": this.nome,
      "idade": this.idade,
      "estaAutenticada": this.estaAutenticada
    };
  }
}
