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
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Card(
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [ 

                  const Padding(
                  padding: EdgeInsets.only(top: 10.0),
                    child: Text(
                     "Receita",
                      textAlign: TextAlign.center,
                      textScaleFactor: 1.5,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  
                  TextFormField(initialValue: args.receita.titulo,
                   textAlign: TextAlign.center,
                  

                  ),

                  const Padding(
                  padding: EdgeInsets.only(top: 10.0),
                    child: Text(
                     "Ingredientes",
                      textAlign: TextAlign.center,
                      textScaleFactor: 1.5,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  
                  TextFormField(initialValue: args.receita.dados.Ingredientes.toString(),
                   textAlign: TextAlign.center,
                  
                  
                  ),

                  const Padding(
                  padding: EdgeInsets.only(top: 10.0),
                    child: Text(
                     "Passo a Passo",
                      textAlign: TextAlign.center,
                      textScaleFactor: 1.5,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ), 
                   TextFormField(initialValue: args.receita.dados.PassoPasso.toString(),
                   textAlign: TextAlign.center,
                  
                   ),

                  const Padding(
                  padding: EdgeInsets.only(top: 10.0),
                    child: Text(
                     "Cozimento (Min)",
                      textAlign: TextAlign.center,
                      textScaleFactor: 1.5,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                   TextFormField(initialValue: args.receita.dados.TempoCozimento.toString(),
                   textAlign: TextAlign.center,
                  
                   ),


                  const Padding(
                  padding: EdgeInsets.only(top: 10.0),
                    child: Text(
                     "Preparo (Min)",
                      textAlign: TextAlign.center,
                      textScaleFactor: 1.5,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                   TextFormField(initialValue: args.receita.dados.TempoPreparo.toString(),
                   textAlign: TextAlign.center,
                  
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