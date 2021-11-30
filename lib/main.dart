import 'package:flutter/material.dart';
import 'package:projeto_final/widgetsReceita/receita_detail.dart';
import 'home.dart';
import 'receita.dart';

void main() {
  runApp(const ProjetoApp());
}

class ProjetoApp extends StatelessWidget{
  final titulo = "projeto final";
  const ProjetoApp({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.red),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const Home(),
        '/detail': (context) => const ReceitaDetail(),
      }, // Rota Principal

    );
  }
}