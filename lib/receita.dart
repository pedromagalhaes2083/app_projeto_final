import 'dados_receita.dart';

class Receita{
  int id;
  String titulo;
  DadosReceita dados;
  Receita(this.id, this.titulo, this.dados);

  @override
  String toString(){
    return "($id, $titulo, $dados)";
  }
}