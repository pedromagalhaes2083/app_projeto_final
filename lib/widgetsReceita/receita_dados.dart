import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:projeto_final/widgetsReceita/receita_arg.dart';


class ReceitaDados extends StatelessWidget{
  final ReceitaArg args;
  final String title;
  final dynamic initialValue;
  
  
  final void Function(dynamic) onUpdate;
  const ReceitaDados(
    {Key? key, 
    required this.args,
    required this.title,
    required this.initialValue,
    required this.onUpdate}) 
    : super(key: key);


     @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Center(
        child: Column(
          children: [
            Padding(
                  padding: EdgeInsets.only(top: 10.0),
                    child: Text(
                      title,
                      textAlign: TextAlign.center,
                      textScaleFactor: 1.5,
                     style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.orange
                      ),
                    ),
                  ),       
                  TextFormField(initialValue: initialValue.toString(),
                   textAlign: TextAlign.center,
                      keyboardType: TextInputType.multiline,
                      minLines: 1,
                      maxLines: 20,
                      maxLength: 1000,
                      decoration: const InputDecoration(counterText: ""),
                                    
                    onChanged: (value){
                      onUpdate(value);
                      args.refresh();
                    },

                  ),
          
          ],
        ),
      ),
    );
  }
}