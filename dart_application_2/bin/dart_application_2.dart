//Interable é uma coleção de elementos e uma classe abastrata
//var pode receber qualquer tipo, mas nao pode ser mudada em tempo de execução
//dynamic pode mudar o tipo em tempo de execução
//var e dynamic nao precisa de inicialização de variavel

import 'transporte.dart';
import 'viagem.dart';

void main() {
  Viagem viagemMaio = Viagem(locomocao: Transporte.andando);
  print(viagemMaio.consultarTotalLocaisVisitados);
}//teste

