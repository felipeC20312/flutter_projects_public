import 'package:flutter/material.dart';
import 'package:diw_atividade05/ListaDeItens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: listaDeItens(),
      debugShowCheckedModeBanner: false,
    );
  }
}
