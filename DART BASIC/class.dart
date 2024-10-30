import 'dart:io';

class Pessoa{
  String nome = "";
  String cargo = "";
  int idade = 0;
  int tempoDeTra = 0;

  feedbackBom(){
    print("$nome esta a $tempoDeTra anos na empresa e tem $idade anos é $cargo e tem um Bom Desempenho!");
  }
  feedbackRuim(){
    print("$nome esta a $tempoDeTra anos na empresa e tem $idade anos é $cargo e tem um Desempenho Ruim!");
  }
}
void main(){
    Pessoa pessoa = new Pessoa();
    pessoa.nome = "João";
    pessoa.cargo = "Gerente";
    pessoa.idade = 30;
    pessoa.tempoDeTra = 10;
    pessoa.feedbackBom();

    Pessoa pessoa2 = new Pessoa();
    pessoa2.nome = "Maria";
    pessoa2.cargo = "Vendedora";
    pessoa2.idade = 25;
    pessoa2.tempoDeTra = 5;
    pessoa2.feedbackRuim();
}

