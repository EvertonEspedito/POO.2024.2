import 'dart:math';

void main(){
  int variabilidadeError = 12;
  int totalCel = 12;
  List gpA = [];
  List gpB = [];
  List gpC = [];
  List gpDes = [];
  
  for (var i = 0; i < totalCel; i++) {
    int qtdError = Random().nextInt(variabilidadeError);
    if(qtdError <= 3){
        gpA.add(qtdError);
    }if(qtdError >= 4 && qtdError <= 7) {
        gpB.add(qtdError);
    }if (qtdError  >= 8 && qtdError <= 11) {
        gpC.add(qtdError);
    }if (qtdError > 11){
        gpDes.add(qtdError);
    }
  }

  print("->${gpA.length} Celulares no Grupo A \n->${gpB.length} Celulares no Grupo B \n->${gpC.length} Celulares no Grupo C\n->${gpDes.length} Celulares para Descarte\n");
}