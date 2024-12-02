import 'package:flutter/material.dart';

class RetosGrupales extends StatelessWidget {
  const RetosGrupales({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Retos Grupales'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 235, 240, 243),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              '📅 Retos Activos',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            _buildChallengeItem(
              '10,000 pasos al día',
              'Camina 10,000 pasos durante 7 días consecutivos.',
              true,
            ),
            _buildChallengeItem(
              'Reto HIIT',
              'Completa 5 sesiones de HIIT en una semana.',
              true,
            ),
            const SizedBox(height: 30),
            const Text(
              '🏁 Retos Completados',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            _buildChallengeItem(
              'Reto de Resistencia',
              'Corre 5 km sin detenerte.',
              false,
            ),
            _buildChallengeItem(
              'Reto de Yoga',
              'Practica yoga todos los días durante 2 semanas.',
              false,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildChallengeItem(String title, String description, bool isActive) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Card(
        color: isActive ? Colors.blueGrey[800] : Colors.grey[850],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: isActive ? Colors.blue : Colors.green,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                description,
                style: const TextStyle(fontSize: 16, color: Colors.white70),
              ),
              const SizedBox(height: 10),
              Text(
                isActive ? 'Estado: Activo' : 'Estado: Completado',
                style: TextStyle(
                  fontSize: 14,
                  color: isActive ? Colors.blue : Colors.green,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
