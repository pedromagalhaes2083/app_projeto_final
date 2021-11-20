import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:projeto_final/receita.dart';
import 'package:projeto_final/widgetsReceita/receita_arg.dart';

class ReceitasList extends StatefulWidget {
  final List<Receita> receitaList;
  final void Function(int) delete;
  const ReceitasList(
    {Key? key, required this.receitaList, required this.delete})
    : super(key: key);
  
  @override
  State<ReceitasList> createState() => _ReceitasListState();
}

class _ReceitasListState extends State<ReceitasList> {
  void refresh(){
    setState(() { });
  }
 
  @override
  Widget build(BuildContext context){
    const messagem = "Confirmar exclusão do item?";
    const sim = 'Sim';
    const nao = 'Não';
    return ListView.builder(
      shrinkWrap: true,
      itemCount: widget.receitaList.length,
      itemBuilder: (context, index) {
        final Receita item = widget.receitaList[index];
        return ListTile(
          onTap: () {
            Navigator.of(context).pushNamed(
            '/detail',
            arguments: ReceitaArg (
              receita: item,
              refresh: refresh
              ),
            );
          },
          trailing: IconButton(
            color: Theme.of(context).errorColor,
            icon: const Icon(Icons.delete),
            onPressed: () {
              showDialog (
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text(messagem),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        }, 
                        child: const Text(nao)
                        ),
                        TextButton(
                        onPressed: () {
                          widget.delete(item.id);
                          Navigator.of(context).pop();
                        }, 
                        child: const Text(sim)
                        ),
                    ],
                  );
                }
              );
            },
          ),
          leading: CircleAvatar(
              backgroundColor: Theme.of(context).primaryColor,
            child: const Text('🍽️'),
          ),
          title: Text(
            '${item.id} - ${item.titulo}',
            textScaleFactor: 1.4,
            style: TextStyle(color: Theme.of(context).primaryColorDark),
          ),
          subtitle: Text(item.dados.TempoPreparo.toString()),
        );
      },
    );
  }
}

