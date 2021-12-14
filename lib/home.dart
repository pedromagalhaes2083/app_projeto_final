import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projeto_final/widgetsReceita/receita_form.dart';
import 'package:projeto_final/widgetsReceita/receita_list.dart';
import 'package:projeto_final/receita.dart';
import 'dados_receita.dart';

class Home extends StatefulWidget{
  const Home({Key? key}) : super(key: key);
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home>{
  List<Receita> receitas = [
    Receita(1, 'Miojo', DadosReceita(3, 4, ' Abra o pacote, coloque dentro da água foi anteriormente despejada em um recipiente já fervendo e, deixe lá por 3min, após isso retire o excesso de água e coloque o saquinho de sabor, aproveite. :)', 'Pacote de miojo')),
  ];

  int id_counter = 2;
  void _add(String titulo, DadosReceita dados){
    setState(() {
    receitas.add(Receita(id_counter, titulo, dados));
    });
  }
  void _delete(int id){
    setState(() {
      receitas.removeWhere((Receita item) => item.id == id);
    });
  }

  final title = 'PROJETO FINAL - DECUMÊ';
  @override
  Widget build(BuildContext context){
    final AppBar appBar = AppBar(
      title: Text(title),
      actions: [
        IconButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (_) {
                return ReceitaForm(submit: _add);
              },
            );
          },
          icon: const Icon(Icons.add),
        )
      ],
    );
     return Scaffold(
      appBar: appBar,
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height -
                appBar.preferredSize.height -
                MediaQuery.of(context).padding.top,
            child: ReceitasList(
              delete: _delete,
              receitaList: receitas,
            ),
          ),
        ],
      ),
    );
  }
}