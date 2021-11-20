import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/widgets.dart';
import 'package:projeto_final/widgetsReceita/receita_arg.dart';

class ReceitaDetail extends StatelessWidget{
  const ReceitaDetail({Key? key}) : super(key : key);
  @override
  Widget build(BuildContext context){
    final ReceitaArg args =
    ModalRoute.of(context)!.settings.arguments as ReceitaArg;
    return Scaffold(
      appBar: AppBar(title: const Text('Detalhes')),
      body: Stack(
        children: [
          Image.asset(
            '',
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Card(
                color: Colors.white12,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.blueGrey,
                        radius: 80,
                        child: Image.asset(
                          '',
                          height: 130,
                        ),
                      ),
                    ),
                    Text(
                      args.receita.titulo,
                      textAlign: TextAlign.center,
                      textScaleFactor: 1.8,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
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