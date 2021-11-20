import 'utilitarios.dart';

class DadosReceita{
  int _tempoCozimento = 0;
  int _tempoPreparo = 0;
  String _passoPasso = "";
  String _ingredientes = "";

  DadosReceita(int tempoCozimento, int tempoPreparo, String passoPasso, String ingredientes){
    if(ValidarInteiro(tempoCozimento)) _tempoCozimento = tempoCozimento;
    if(ValidarInteiro(tempoPreparo)) _tempoPreparo = tempoPreparo;
    if(ValidarString(passoPasso)) _passoPasso = passoPasso;
    if(ValidarString(ingredientes)) _ingredientes = ingredientes;
  }

  set TempoCozimento(int valor){
    if(ValidarInteiro(valor)) _tempoCozimento = valor;
  }
  int get TempoCozimento => _tempoCozimento;

  set TempoPreparo(int valor){
    if(ValidarInteiro(valor)) _tempoPreparo = valor;
  }
  int get TempoPreparo => _tempoPreparo;

  set PassoPasso(String valor) {
    if(ValidarString(valor)) _passoPasso = valor;
  }
  String get PassoPasso => _passoPasso;

  set Ingredientes(String valor){
    if(ValidarString(valor)) _ingredientes = valor;
  }
  String get Ingredientes => _ingredientes;
}