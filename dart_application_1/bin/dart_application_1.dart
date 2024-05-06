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

  Legumes mandioca = Legumes("mandioca", 1200.4, "Marrom", true);
  Fruta banana1 = Fruta("Banana", 1000, "Amarela", "Doce", 12);
  Nozes macadamia1 = Nozes("Macadamia", 500, "branco", "doce", 20, 35);
  Citricas limao1 = Citricas("Limão", 100, "verde", "Azedo", 19, 9);
// podemos usar metodos dos pais
  macadamia1.printAlimento();
  banana1.printAlimento();
  mandioca.printAlimento();
  limao1.printAlimento();

  //chamando os metodos das suas classes
  mandioca.cozinhar();
  limao1.fazerSuco();

  // usando classe abastract
  banana1.separaIngredientes();
  macadamia1.fazerMassa();
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

class Fruta extends Alimento implements Bolo {
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

  //sobre escreve o metodo
  @override
  void separaIngredientes() {
    print("Catar a $nome");
  }

  @override
  void fazerMassa() {
    print("Misturar a fruta com farrinha, açucar, ovos ... ");
  }

  @override
  void assar() {
    print("Colocar no forno");
  }
}

class Legumes extends Alimento implements Bolo {
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

  @override
  void assar() {}
  @override
  void fazerMassa() {}
  @override
  void separaIngredientes() {}
}

class Citricas extends Fruta {
  double nivelAzedo;

  Citricas(String nome, double peso, String cor, String sabor,
      int diaDesdeColheita, this.nivelAzedo)
      : super(nome, peso, cor, sabor, diaDesdeColheita);
  void existeRefri(bool existe) {
    if (existe) {
      print("Existe refri dessa futra com o nome $nome");
    } else {
      print("Não existe refri de $nome");
    }
  }
}

class Nozes extends Fruta {
  double porcentagemOleoNatural;
  Nozes(String nome, double peso, String cor, String sabor,
      int diaDesdeColheita, this.porcentagemOleoNatural)
      : super(nome, peso, cor, sabor, diaDesdeColheita);

  @override
  void fazerMassa() {
    print("Tirar a casca");
    super.fazerMassa();
  }
}

//basicamente um conceito, um molde
abstract class Bolo {
  void separaIngredientes();

  void fazerMassa();

  void assar();
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
