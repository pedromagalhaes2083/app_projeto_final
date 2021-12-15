import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:projeto_final/widgetsReceita/receita_arg.dart';
import 'package:projeto_final/widgetsReceita/receita_dados.dart';

class ReceitaDetail extends StatelessWidget{
  const ReceitaDetail({Key? key}) : super(key : key);
  
  @override
  Widget build(BuildContext context){
    final ReceitaArg args =
    ModalRoute.of(context)!.settings.arguments as ReceitaArg;
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text(
        'DETALHES: ' + args.receita.titulo.toString(),
        style: const TextStyle(color: Colors.white),
      )),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Card(
                color: Colors.deepOrange[50],
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [ 

                  ReceitaDados(
                    args: args,
                    title: "Receita",
                    initialValue: args.receita.titulo,
                    onUpdate: (value) => args.receita.titulo = value,
                  ),
                  ReceitaDados(
                    args: args,
                    title: "Ingredientes",
                    initialValue: args.receita.dados.Ingredientes,
                    onUpdate: (value) => args.receita.dados.Ingredientes = value,
                  ),
                  ReceitaDados(
                    args: args,
                    title: "Passo a Passo",
                    initialValue: args.receita.dados.PassoPasso,
                    onUpdate: (value) => args.receita.dados.PassoPasso = value,
                  ),
                  ReceitaDados(
                    args: args,
                    title: "Cozimento (min.)",
                    initialValue: args.receita.dados.TempoCozimento,
                    onUpdate: (value) => args.receita.dados.TempoCozimento = toInt(value),
                  ),
                  ReceitaDados(
                    args: args,
                    title: "Preparo (min.)",
                    initialValue: args.receita.dados.TempoPreparo,
                    onUpdate: (value) => args.receita.dados.TempoPreparo = toInt(value),
                  ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

int toInt(String texto){
 return int.tryParse(texto) ?? 0;
}