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
    Receita(1, ' FAROFA DE CUZCUZ COMPLETA',
    DadosReceita(20, 280,
    ' Passo 1: A farinha com sal e hidrate-a com água filtrada gelada (para cada 100g de farinha, utilize 50ml de água). Leve à geladeira por 4 horas. '
    'Passo 2: Após as 4 horas, bote a farinha na cuscuzeira com 500ml de água na parte inferior. Tampe e deixe no fogo médio por 15 a 20 minutos (caso não tenha cuscuzeira, pode usar escorredor de macarrão). '
    'Passo 3: Fatie as carnes em cortes diferentes; deixe pedaços grandes. Corte o queijo coalho em quadrados e sele-os na frigideira. Conserve. '
    'Passo 4: Salteie as carnes com manteiga de garrafa na seguinte ordem. '
    'Passo 5: Carne de Sol. '
    'Passo 6: Linguiça. '
    'Passo 7: Bacon. '
    'Passo 8: Quando as carnes estiverem caramelizadas, mas não bem-passadas, adicione cebola e alho picados. Bata 5 ovos e jogue-os na frigideira. Mexa bem. '
    'Passo 9: Tire a farinha da cuscuzeira e jogue-a na frigideira. Misture e acrescente um fio de manteiga de garrafa. Corte as ervas e adicione-as à frigideira. Misture. '
    'Passo 10: Volte com o queijo coalho e finalize com uma porção generosa de manteiga de garrafa. '
    , ' 300g de farinha de milho flocada, 300g de bacon, 100g de linguiça mineira, 100g de linguiça nordestina,'
    '400g de carne de sol dessalgada, 50ml de manteiga de garrafa, 5 ovos, 3-5 dentes de alho, 1 cebola média,'
    'Ceboulette, Salsinha, Coentro ')),
  ];

  int id_counter = 2;
  void _add(String titulo, DadosReceita dados){
    setState(() {
    receitas.add(Receita(id_counter, titulo, dados));
    });
    id_counter++;
    Navigator.of(context).pop();
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
      title: Text(
        title, 
        style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
      ),
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
          icon: const Icon(Icons.add, color: Colors.white,),
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
            child:  Padding(
              padding: const EdgeInsets.only(top: 10.0),
               child: ReceitasList(
                  delete: _delete,
                  receitaList: receitas,
                ),
            ), 
          ),
        ],
      ),
    );
  }
}