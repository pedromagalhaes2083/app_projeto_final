import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:projeto_final/dados_receita.dart';

class ReceitaForm extends StatefulWidget {
  final void Function(String, DadosReceita) submit;
  const ReceitaForm({Key? key, required this.submit}) : super(key: key);
  @override
  State<ReceitaForm> createState() => _ReceitaFormState();
}

class _ReceitaFormState extends State<ReceitaForm> {
  final String? titulo = 'Titulo';
  final String? cozimento = 'Cozimento (Min.)';
  final String? preparo = 'Preparo (Min.)';
  final String? ingredientes = 'Ingredientes';
  final String? passopasso = 'Passo-a-Passo';
  final String save = 'Salvar';

  final tituloController = TextEditingController();
  final cozimentoController = TextEditingController();
  final preparoController = TextEditingController();
  final ingredienteController = TextEditingController();
  final passopassoController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(
          top: 10,
          left: 10,
          right: 10,
          bottom: 10 + MediaQuery.of(context).viewInsets.bottom,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children:  [
            TextField(
              controller: tituloController,
              decoration: InputDecoration(            
                labelText: titulo,
                border: const OutlineInputBorder(),
              ),
            ),
             const Padding(
                padding: EdgeInsets.only(top: 10.0),     
              ),
            TextField(
              controller: ingredienteController,
              decoration: InputDecoration(            
                labelText: ingredientes,
                border: const OutlineInputBorder(),
              ),
            ), 
              const Padding(
                padding: EdgeInsets.only(top: 10.0),     
              ),
            TextField(
              controller: passopassoController,
              decoration: InputDecoration(            
                labelText: passopasso,
                border: const OutlineInputBorder(),
              ),
            ), 
              const Padding(
                padding: EdgeInsets.only(top: 10.0),     
              ),
            TextField(
              controller: cozimentoController,
              decoration: InputDecoration(            
                labelText: cozimento,
                border: const OutlineInputBorder(),
              ),
            ),
              const Padding(
                padding: EdgeInsets.only(top: 10.0),     
              ),
            TextField(
              controller: preparoController,
              decoration: InputDecoration(            
                labelText: preparo,
                border: const OutlineInputBorder(),
              ),
            ),


            ElevatedButton(
              onPressed: () {
                if(tituloController.text.length > 2){  
                  widget.submit(tituloController.text, DadosReceita(toInt(cozimentoController.text), 
                  toInt(preparoController.text), 
                  passopassoController.text,
                  ingredienteController.text));
                }
              }, child: Text(save),
            )
          ],
        ),
      )
   );
  }
}

int toInt(String texto){
 return int.tryParse(texto) ?? 0;
}
 