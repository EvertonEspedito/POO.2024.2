import 'dart:io';
import 'dart:math';

void main() {
 
  // Variáveis
  int vMin = 0;
  int vMax = 10;
  int vTentativas = 5;
  int respostasCertas = 0;
  int respostasErradas = 0;

  //Loop For
  for (int i = 0; i < vTentativas; i++) {
      int numSort1 = vMin + Random().nextInt(vMax - vMin) + 1;
      int numSort2 = vMin + Random().nextInt(vMax - vMin + 1);
      bool resultado = questsMult(numSort2, numSort1);
      if (resultado) {
        respostasCertas++;
      } else {
        respostasErradas++;
      }
  }
  exibirResultado(respostasCertas, respostasErradas);
}  

//FUNÇÕES
  //Função Questôes Multiplicação
bool questsMult(int x, int y) {
    print('Quanto é $x * $y?');
    int resposta = int.parse(stdin.readLineSync()!);
    if (resposta == x * y) {
      print("Resposta Correta!");
      return true;
    }else{
      print("Resposta Incorreta!");
      return false;
    }
}

// Função para exibir o resultado final
void exibirResultado(int certas, int erradas) {
  print("\nResultados:");
  print("Respostas certas: $certas");
  print("Respostas erradas: $erradas");
}


