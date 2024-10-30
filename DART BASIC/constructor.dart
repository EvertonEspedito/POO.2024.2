import 'dart:io';

class Pessoa{
  String nome = "";
  String cargo = "";
  int idade = 0;
  int tempoDeTra = 0;

//Constructor
  Pessoa(String nome,String cargo,int idade,int tempoDeTra){
    this.nome = nome;
    this.cargo = cargo;
    this.idade = idade;
    this.tempoDeTra = tempoDeTra;
  }

  feedbackBom(){
    print("$nome esta a $tempoDeTra anos na empresa e tem $idade anos é $cargo e tem um Bom Desempenho!");
  }
  feedbackRuim(){
    print("$nome esta a $tempoDeTra anos na empresa e tem $idade anos é $cargo e tem um Desempenho Ruim!");
  }
}
void main(){
    //com o constructor vc pode colocar a descrição direto no parametro!
    Pessoa pessoa = new Pessoa("João","Gerente",30,10);
    pessoa.feedbackBom();

    Pessoa pessoa2 = new Pessoa("Maria","Vendedora",25,5);
    pessoa2.feedbackRuim();
}

