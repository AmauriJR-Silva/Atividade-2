import 'package:flutter/material.dart';

class BarraNavegacao extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onPageChanged;

  const BarraNavegacao({
    Key? key,
    required this.currentIndex,
    required this.onPageChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      indicatorColor: Colors.amber,
      backgroundColor: Colors.blue,
      selectedIndex: currentIndex,
      onDestinationSelected: (index) {
        onPageChanged(index);
      },
      destinations: const <NavigationDestination>[
        NavigationDestination(
          icon: Icon(Icons.home_outlined, color: Colors.white),
          label: 'Início',
        ),
        NavigationDestination(
          icon: Icon(Icons.visibility_outlined, color: Colors.white),
          label: 'Monitoramento',
        ),
        NavigationDestination(
          icon: Icon(Icons.message_outlined, color: Colors.white),
          label: 'Dicas de Saúde',
        ),
        NavigationDestination(
          icon: Icon(Icons.person_outline, color: Colors.white),
          label: 'Perfil',
        ),
      ],
    );
  }
}

