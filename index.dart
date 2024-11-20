import 'dart:math';

void main() {
  const int quantidadeCelulares = 100; // Total de celulares para teste
  List<Map<String, dynamic>> celulares = []; // Lista para armazenar dados dos celulares

  // Função para gerar a quantidade de falhas aleatoriamente
  int gerarFalhas() {
    return Random().nextInt(16); // Gera falhas de 0 a 15
  }

  // Função para classificar o celular com base nas falhas
  String classificarCelular(int falhas) {
    if (falhas <= 3) {
      return 'A';
    } else if (falhas <= 7) {
      return 'B';
    } else if (falhas <= 11) {
      return 'C';
    } else {
      return 'Descarte';
    }
  }

  // Gerar e classificar os celulares
  for (int i = 1; i <= quantidadeCelulares; i++) {
    int falhas = gerarFalhas();
    String grade = classificarCelular(falhas);

    celulares.add({
      'id': 'Celular teste nº$i',
      'falhas': falhas,
      'grade': grade,
    });
  }

  // Contar a quantidade de celulares em cada grade
  Map<String, int> contagemGrades = {
    'A': 0,
    'B': 0,
    'C': 0,
    'Descarte': 0,
  };

  for (var celular in celulares) {
    contagemGrades[celular['grade']] = contagemGrades[celular['grade']]! + 1;
  }

  // Calcular os percentuais
  Map<String, double> percentuaisGrades = {};
  for (var grade in contagemGrades.keys) {
    percentuaisGrades[grade] = (contagemGrades[grade]! / quantidadeCelulares) * 100;
  }

  // Exibir os resultados
  print('Classificação dos celulares:');
  for (var grade in contagemGrades.keys) {
    print(
        'Grade $grade: ${contagemGrades[grade]} celulares (${percentuaisGrades[grade]!.toStringAsFixed(2)}%)');
  }

  print('\nTotal de celulares testados: $quantidadeCelulares');
}
