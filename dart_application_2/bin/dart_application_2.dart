void main() {
  // escolherMeioTransporte(1);
  escolherMeioTransporteEnum(Transporte.carro);
}

void escolherMeioTransporte(int locomocao) {
  if (locomocao == 0) {
    print("Vou de CARRo para aventura");
  } else if (locomocao == 1) {
    print("Vou de BIKE para aventura");
  } else {
    print("Vou para aventura");
  }
}

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

enum Transporte { carro, bike, andando, skate, aviao, patins, trem }
