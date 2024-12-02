import 'package:flutter/material.dart';

class RutinasSugeridas extends StatelessWidget {
  const RutinasSugeridas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Rutinas Sugeridas'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 219, 222, 223),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              '🔥 Rutinas Populares',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            _buildRoutineItem(
              'Cardio Intenso',
              'Duración: 30 minutos\nCalorías quemadas: ~300',
              true,
            ),
            _buildRoutineItem(
              'Entrenamiento de Fuerza',
              'Duración: 45 minutos\nIdeal para ganar músculo.',
              true,
            ),
            const SizedBox(height: 30),
            const Text(
              '✨ Nuevas Rutinas',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            _buildRoutineItem(
              'Yoga Relajante',
              'Duración: 20 minutos\nMejora la flexibilidad y reduce el estrés.',
              false,
            ),
            _buildRoutineItem(
              'HIIT Explosivo',
              'Duración: 25 minutos\nMejora tu resistencia con intervalos intensos.',
              false,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRoutineItem(String title, String description, bool isPopular) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Card(
        color: isPopular ? Colors.blueGrey[800] : Colors.grey[850],
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
                  color: isPopular ? Colors.orange : Colors.cyan,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                description,
                style: const TextStyle(fontSize: 16, color: Colors.white70),
              ),
              const SizedBox(height: 10),
              Text(
                isPopular ? 'Estado: Popular 🔥' : 'Estado: Nueva ✨',
                style: TextStyle(
                  fontSize: 14,
                  color: isPopular ? Colors.orange : Colors.cyan,
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
