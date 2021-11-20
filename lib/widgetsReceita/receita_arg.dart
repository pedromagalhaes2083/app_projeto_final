import '../../receita.dart';

class ReceitaArg {
  final Receita receita;
  void Function() refresh;
  ReceitaArg({required this.receita, required this.refresh});
}
