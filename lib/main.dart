import 'package:flutter/material.dart';
import 'package:projeto_final/widgetsReceita/receita_detail.dart';
import 'home.dart';

void main() {
  runApp(const ProjetoApp());
}

class ProjetoApp extends StatelessWidget{
  const ProjetoApp({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.orange),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const Home(),
        '/detail': (context) => const ReceitaDetail(),
      }, // Rota Principal

    );
  }
}