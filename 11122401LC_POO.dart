import 'dart:io';
import 'dart:math';

void main() {
  // Create a new file
 
  // Matriz dinâmica
  List<List<dynamic>> questsMult = [
    ["1 x 5", 5],
    ["2 x 5", 10],
    ["3 x 5", 15],
    ["4 x 5", 20],
    ["5 x 5", 25],
    ["6 x 5", 30],
    ["7 x 5", 35],
    ["8 x 5", 40],
    ["9 x 5", 45],
    ["10 x 5", 50],
  ];

  // Variáveis
  int tamMatrizMult = questsMult.length;
  int vMin = 0;
  int vMax = tamMatrizMult;

  // Contadores de respostas corretas e erradas
  int respostasCertas = 0;
  int respostasErradas = 0;

  // Imprimindo Perguntas
  for (var i = 0; i < tamMatrizMult; i++) {
    int perguntaSorteada = vMin + Random().nextInt(vMax - vMin);

    // Chamar função de perguntas aleatórias e atualizar contadores
    bool resultado = perguntaAleato(questsMult, perguntaSorteada);
    if (resultado) {
      respostasCertas++;
    } else {
      respostasErradas++;
    }
  }

  // Exibir o resultado final
  exibirResultado(respostasCertas, respostasErradas);
}

// Funções
  // Função para pergunta aleatória
bool perguntaAleato(dynamic matriz, int perg) {
  print("Quanto é ${matriz[perg][0]}?");
  int resposta = int.parse(stdin.readLineSync()!);
  if (resposta == matriz[perg][1]) {
    print("Resposta correta!");
    return true;
  } else {
    print("Resposta errada!");
    return false;
  }
}

// Função para exibir o resultado final
void exibirResultado(int certas, int erradas) {
  print("\nResultados:");
  print("Respostas certas: $certas");
  print("Respostas erradas: $erradas");
}
