import 'package:flutter/material.dart';

class Perfil extends StatelessWidget {
  const Perfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Campo de Nome
          _buildInfoField(
            label: 'Nome',
            value: 'João da Silva',
            onPressed: () {
              // Ação para o botão "Excluir"
            },
          ),
          const SizedBox(height: 16),

          // Campo de Idade
          _buildInfoField(
            label: 'Idade',
            value: '25 anos',
            onPressed: () {
              // Ação para o botão "Excluir"
            },
          ),
          const SizedBox(height: 16),

          // Campo de Peso
          _buildInfoField(
            label: 'Peso',
            value: '70 kg',
            onPressed: () {
              // Ação para o botão "Excluir"
            },
          ),
          const SizedBox(height: 16),

          // Campo de Altura
          _buildInfoField(
            label: 'Altura',
            value: '1.75 m',
            onPressed: () {
              // Ação para o botão "Excluir"
            },
          ),
        ],
      ),
    );
  }

  // Widget para criar um campo de informação com um botão "Excluir"
  Widget _buildInfoField({
    required String label,
    required String value,
    required VoidCallback onPressed,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Text(
            '$label: $value',
            style: const TextStyle(fontSize: 16),
          ),
        ),
        const SizedBox(width: 8),
        ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red, // Cor do fundo do botão
            foregroundColor: Colors.white, // Cor do texto do botão
          ),
          child: const Text('Excluir'),
        ),
      ],
    );
  }
}
