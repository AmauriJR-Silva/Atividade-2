import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Monitoramento extends StatelessWidget {
  const Monitoramento({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: SfCartesianChart(
              primaryXAxis: CategoryAxis(
                labelRotation: 45,
                title: AxisTitle(text: 'Data'),
              ),
              primaryYAxis: NumericAxis(
                title: AxisTitle(text: 'Status de Saúde'),
                minimum: 0,
                maximum: 100,
                interval: 10,
              ),
              title: ChartTitle(text: 'Status de Saúde ao Longo do Tempo'),
              legend: Legend(isVisible: true),
              tooltipBehavior: TooltipBehavior(enable: true),
              series: <CartesianSeries>[
                LineSeries<HealthData, String>(
                  dataSource: [
                    HealthData('Jan', 80),
                    HealthData('Fev', 85),
                    HealthData('Mar', 90),
                    HealthData('Abr', 70),
                    HealthData('Mai', 75),
                    HealthData('Jun', 95),
                  ],
                  xValueMapper: (HealthData data, _) => data.month,
                  yValueMapper: (HealthData data, _) => data.healthStatus,
                  name: 'Status de Saúde',
                  dataLabelSettings: const DataLabelSettings(isVisible: true),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Card(
            color: Colors.green, // Define o fundo do card como verde
            elevation: 4,
            margin: const EdgeInsets.symmetric(vertical: 8.0),
            child: ListTile(
              title: const Text(
                'Status Geral',
                style: TextStyle(color: Colors.white), // Define o texto como branco
              ),
              subtitle: const Text(
                'Bom',
                style: TextStyle(color: Colors.white70), // Branco com opacidade
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: const Icon(Icons.edit, color: Colors.white),
                    onPressed: () {
                      print('Editar');
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.delete, color: Colors.red),
                    onPressed: () {
                      print('Excluir');
                    },
                  ),
                ],
              ),
            ),
          ),
          Card(
            color: Colors.green,
            elevation: 4,
            margin: const EdgeInsets.symmetric(vertical: 8.0),
            child: ListTile(
              title: const Text(
                'Última Avaliação',
                style: TextStyle(color: Colors.white),
              ),
              subtitle: const Text(
                '15/06/2024',
                style: TextStyle(color: Colors.white70),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: const Icon(Icons.edit, color: Colors.white),
                    onPressed: () {
                      print('Editar');
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.delete, color: Colors.red),
                    onPressed: () {
                      print('Excluir');
                    },
                  ),
                ],
              ),
            ),
          ),
          Card(
            color: Colors.green,
            elevation: 4,
            margin: const EdgeInsets.symmetric(vertical: 8.0),
            child: ListTile(
              title: const Text(
                'Recomendações',
                style: TextStyle(color: Colors.white),
              ),
              subtitle: const Text(
                'Manter rotina de exercícios e dieta equilibrada.',
                style: TextStyle(color: Colors.white70),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: const Icon(Icons.edit, color: Colors.white),
                    onPressed: () {
                      print('Editar');
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.delete, color: Colors.red),
                    onPressed: () {
                      print('Excluir');
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HealthData {
  HealthData(this.month, this.healthStatus);
  final String month;
  final double healthStatus;
}
