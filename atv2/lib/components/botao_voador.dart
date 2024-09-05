import 'package:flutter/material.dart';

class BotaoVoador extends StatefulWidget {
  const BotaoVoador({super.key});

  @override
  State<BotaoVoador> createState() => _BotaoVoadorState();
}

class _BotaoVoadorState extends State<BotaoVoador> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.blue, 
      foregroundColor: Colors.white, 
      child: const Icon(Icons.add_circle), 
      onPressed: () {
        print('Plim'); 
      },
    );
  }
}
