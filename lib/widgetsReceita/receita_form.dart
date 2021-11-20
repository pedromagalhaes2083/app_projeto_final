import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:projeto_final/dados_receita.dart';

class ReceitaForm extends StatefulWidget {
  final void Function(String, DadosReceita) submit;
  const ReceitaForm({Key? key, required this.submit, required dados}) : super(key: key);
  @override
  State<ReceitaForm> createState() => _ReceitaFormState();
}

class _ReceitaFormState extends State<ReceitaForm> {
  final String? titulo = 'Titulo';
  final String? preparo = 'Temp. Preparo';
  final String? cozimento = 'Temp. Cozimento';
  final String? ingredientes = 'Ingredientes';
  final String? passopasso = "Passo-a-Passo";
  final String save = 'Salvar';


  final tituloController = TextEditingController();
  final preparoController = TextEditingController();
  final cozimentoController = TextEditingController();
  final ingredientesController = TextEditingController();
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
            ElevatedButton(
              onPressed: () {
                if(tituloController.text.length > 2){  
                  widget.submit(tituloController.text, dados);                  
                }
              }, child: Text(save),
            )
          ],
        ),
      )
   );
  }
}