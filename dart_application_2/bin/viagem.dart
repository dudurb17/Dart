import 'transporte.dart';

class Viagem {
  //so a class consegue pegar esse valor estatico
  static String codigoTrabalho = "FASDASD23";
  Set<String> registrosVisitados = <String>{};
  double dinheiro = 0;
  Transporte locomocao;
  //map seria um dicionario em outras linguagens de programação
  Map<String, double> registrarPrecos = {};

  int _totalLocaisVisitados = 0;

  Viagem({required this.locomocao});

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

  void visitar(String localVisita) {
    registrosVisitados.add(localVisita);
  }

  void registrarPrecoVisita(String local, dynamic preco) {
    registrarPrecos[local] = preco;
  }

  int get consultarTotalLocaisVisitados {
    return _totalLocaisVisitados;
  }
}
