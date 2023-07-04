import 'package:flutter/material.dart';

class ListagemPage extends StatefulWidget {
  const ListagemPage({super.key});

  @override
  State<ListagemPage> createState() => _ListagemPageState();
}

class _ListagemPageState extends State<ListagemPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text("Listagem"),
    );
  }
}
