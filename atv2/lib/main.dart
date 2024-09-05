import 'package:flutter/material.dart';
import 'package:atv2/components/barra_navegacao.dart';
import 'package:atv2/components/botao_voador.dart';
import 'package:atv2/views/inicio.dart';
import 'package:atv2/views/monitoramento.dart';
import 'package:atv2/views/dicas.dart';
import 'package:atv2/views/perfil.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentPageIndex = 0;

  void _onPageChanged(int index) {
    setState(() {
      _currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          centerTitle: true,
        ),
      ),
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text('Saúde em dia'),
          toolbarHeight: 70,
          titleSpacing: 0,
        ),
        bottomNavigationBar: BarraNavegacao(
          currentIndex: _currentPageIndex,
          onPageChanged: _onPageChanged,
        ),
        floatingActionButton: const BotaoVoador(),
        body: IndexedStack(
          index: _currentPageIndex,
          children: const <Widget>[
            Inicio(),
            Monitoramento(),
            Dicas(),
            Perfil(),
          ],
        ),
      ),
    );
  }
}
