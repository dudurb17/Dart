void main() {
  var idade = 19;
  final verdadeiro = true;
  const String nome = "Eduardo";

  double num = 1.43;
  bool falso = false;
  String teste = "teste";
  print(teste);
  print("tenho $idade anos");

  List<String> listanomes = ['Ricarth', "fernando", "eduardo", "ana"];
  print(listanomes);
  List<dynamic> eduardo = [nome, 1.80, idade];
  print(eduardo);

  bool maiorDeIdade;
  if (idade >= 18) {
    maiorDeIdade = true;
  } else {
    maiorDeIdade = false;
  }

  int energia=100;
  for (int i = 1; i <= 5; i += 1) {
    print('$i voltas');
  }
  while(energia>0){
    print("Mais uma repetição");
    energia-=10;
    
  }
  do{
    print("Mais uma repetição");
    energia-=6;

  }while(energia>0);
}
