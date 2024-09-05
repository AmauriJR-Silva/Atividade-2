import 'package:flutter/material.dart';

class Inicio extends StatelessWidget {
  const Inicio({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/saude.jpg',
              width: double.infinity, 
              height: 460, 
              fit: BoxFit.cover, 
            ),
            const SizedBox(height: 20), 
            _buildCard(
              context, 
              'Dicas de Alimentação', 
              'Aprenda estratégias simples para melhorar sua dieta diária e promover uma vida saudável.'
            ),
            const SizedBox(height: 10), 
            _buildCard(
              context, 
              'Exercícios Físicos', 
              'Descubra rotinas de exercícios eficazes para manter-se ativo e em forma sem precisar de equipamentos caros.'
            ),
            const SizedBox(height: 10), 
            _buildCard(
              context, 
              'Cuidados com a Saúde Mental', 
              'Explore técnicas e práticas para gerenciar o estresse e promover o bem-estar mental no seu dia a dia.'
            ),
            const SizedBox(height: 10), 
            _buildCard(
              context, 
              'Importância da Hidratação', 
              'Entenda como a ingestão adequada de água pode melhorar sua saúde e aumentar seu nível de energia.'
            ),
            const SizedBox(height: 10), 
            _buildCard(
              context, 
              'Qualidade do Sono', 
              'Saiba como estabelecer uma rotina de sono saudável e os benefícios de uma boa noite de descanso.'
            ),
            const SizedBox(height: 10), 
            _buildCard(
              context, 
              'Gestão do Tempo', 
              'Dicas para otimizar seu tempo e equilibrar suas responsabilidades diárias com eficiência e eficácia.'
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCard(BuildContext context, String titulo, String descricao) {
    return Card(
      color: Colors.green, 
      elevation: 4, 
      margin: const EdgeInsets.symmetric(vertical: 8), 
      child: ListTile(
        title: Text(
          titulo,
          style: TextStyle(
            color: Colors.white, 
            fontSize: 20, 
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          descricao,
          style: TextStyle(
            color: Colors.white, 
          ),
        ),
      ),
    );
  }
}
