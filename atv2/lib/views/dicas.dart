import 'package:flutter/material.dart';

class Dicas extends StatelessWidget {
  const Dicas({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Campo de pesquisa
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Pesquisar...',
              prefixIcon: Icon(Icons.search, color: Colors.grey),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: BorderSide.none,
              ),
              filled: true,
              fillColor: Colors.grey[200],
            ),
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(
                  'assets/images/alimento.jpg',
                  width: double.infinity,
                  height: 500,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 8),
                Card(
                  color: Colors.green,
                  elevation: 4,
                  margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                  child: ListTile(
                    title: const Text(
                      'Alimentação Saudável',
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: const Text(
                      'Uma dieta balanceada é crucial para a saúde. Inclua frutas, vegetais e proteínas em suas refeições diárias.',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),

                Image.asset(
                  'assets/images/natacao.jpg',
                  width: double.infinity,
                  height: 500,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 8),
                Card(
                  color: Colors.green,
                  elevation: 4,
                  margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                  child: ListTile(
                    title: const Text(
                      'Natação',
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: const Text(
                      'A natação é uma excelente forma de exercício que trabalha todos os grupos musculares e melhora a capacidade cardiovascular.',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),

                Image.asset(
                  'assets/images/meditacao.jpg',
                  width: double.infinity,
                  height: 500,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 8),
                Card(
                  color: Colors.green,
                  elevation: 4,
                  margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                  child: ListTile(
                    title: const Text(
                      'Meditação',
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: const Text(
                      'A meditação pode ajudar a reduzir o estresse e melhorar a clareza mental. Dedique alguns minutos do seu dia para praticá-la.',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),

                Image.asset(
                  'assets/images/terapia.jpg',
                  width: double.infinity,
                  height: 500,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 8),
                Card(
                  color: Colors.green,
                  elevation: 4,
                  margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                  child: ListTile(
                    title: const Text(
                      'Terapia',
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: const Text(
                      'A terapia é uma ferramenta importante para lidar com questões emocionais e psicológicas. Procure ajuda profissional se necessário.',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
