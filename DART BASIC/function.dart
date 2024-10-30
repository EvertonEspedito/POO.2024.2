void main() {
  int nuS = 20;
  int nuM = 5;

  somaNum(nuS, nuM);
  
  reteticaoDoWhile();
}

reteticaoDoWhile(){
    int num = 5;
    do{
      print("O numero é ${num}");
      if (num == 10) {
        print("Chegamos ao Número 10!");
      }
      num++;
    } while (num <= 10);
}

somaNum(int x,int y){
   int soma = x + y;
   print("A soma de $x e $y é $soma!");
}