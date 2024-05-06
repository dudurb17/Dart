void main() {
  String nome = "Laranja";
  double peso = 100.2;
  String cor = "Verde e amarela";
  String sabor = "Doce e citrica";
  int diaDesdeColheita = 40;
  bool isMadura = funcEstaMadura(diaDesdeColheita);

  int quantosDias = funcQuantosDiasMadura(diaDesdeColheita);
  print(quantosDias);
  // funcRecursiva(0, 10);
  mostrarMadura("uva", 40, cor: "preto");
  print(isMadura);

  Fruta fruta01 = Fruta(nome, peso, cor, sabor, diaDesdeColheita);
  print(fruta01.nome);
  fruta01.estaMadura(30);
}

class Alimento {
  String nome;
  double peso;
  String cor;
  Alimento(this.nome, this.peso, this.cor);

  void printAlimento() {
    print("Este(a) $nome pesa $peso gramas e é $cor");
  }
}

class Fruta extends Alimento {
  String sabor;
  int diaDesdeColheita;
  bool? isMadura;
  Fruta(String nome, double peso, String cor, this.sabor, this.diaDesdeColheita,
      {this.isMadura})
      : super(nome, peso, cor);
  //basicamente uma função dentro da class, seu nome é metodo
  void estaMadura(int diasParaMadura) {
    isMadura = diaDesdeColheita >= diasParaMadura;
    print(
        "A sua $nome foi colhida a $diaDesdeColheita dias, e precisa de $diasParaMadura para comer, por tanto está pronta? $isMadura ");
  }

  void fazerSuco() {
    print("Você fez um otimo suco de $nome");
  }
}

class Legumes extends Alimento {
  bool isPrecisaCozinhar;
  Legumes(String nome, double peso, String cor, this.isPrecisaCozinhar)
      : super(nome, peso, cor);
  void cozinhar() {
    if (isPrecisaCozinhar) {
      print("Pronto, o $nome está cozinhando");
    } else {
      print("Pronto, o $nome não está cozinhando");
    }
  }
}

class Citricas {
  String nome;
  double peso;
  String cor;
  int diaDesdeColheita;
  bool? isMadura;
  double nivelAzedo;

  Citricas(
      this.nome, this.peso, this.cor, this.diaDesdeColheita, this.nivelAzedo);
}

//ele chama a prorpia função, porém com uma condição para não entrar em loop
funcRecursiva(int contador, int condicaoParada) {
  print("Estamos há $contador iterações sem StackOverflow.");
  if (contador >= condicaoParada) {
    return;
  }
  funcRecursiva(contador + 1, condicaoParada);
}

//parametros opcionais {String? cor} e não importa a ordem
//parametros com padrão String cor = "sem cor"
// posso colocar required
// parametros nomeados ficam dentro de {}
void mostrarMadura(String nome, int dias, {String? cor}) {
  if (dias >= 30) {
    print("A $nome está madura.");
  } else {
    print("A $nome não está madura.");
  }
  if (cor != null) {
    print("A $nome tem a cor $cor");
  }
}

bool funcEstaMadura(int dias) {
  if (dias >= 30) {
    return true;
  } else {
    return false;
  }
}

int funcQuantosDiasMadura(int dias) {
  int diasParaMadura = 30;
  int quantosDiasFaltam = dias - diasParaMadura;
  return quantosDiasFaltam;
}
