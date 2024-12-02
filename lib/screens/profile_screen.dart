import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Perfil de Usuario'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 228, 231, 233),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Center(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: const NetworkImage(
                      'https://sm.ign.com/ign_latam/feature/a/avatar-the/avatar-the-way-of-water-post-credits-scene-check-in-and-endi_zv4t.jpg',
                    ),
                    backgroundColor: Colors.grey[300],
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Fabian',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Nivel: Intermedio',
                    style: TextStyle(fontSize: 18, color: Colors.white70),
                  ),
                  const Text(
                    'Objetivo: Ganar masa muscular',
                    style: TextStyle(fontSize: 18, color: Colors.white70),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              '🏆 Logros',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            _buildAchievementItem('100 rutinas completadas'),
            _buildAchievementItem('10,000 pasos en un día'),
            _buildAchievementItem('Participación en 5 retos grupales'),
            const SizedBox(height: 30),
            const Text(
              '📋 Historial de Rutinas',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            _buildRoutineItem('Cardio y fuerza - 30 min', '27/11/2024'),
            _buildRoutineItem('Yoga relajante - 20 min', '26/11/2024'),
            _buildRoutineItem('HIIT avanzado - 45 min', '25/11/2024'),
          ],
        ),
      ),
    );
  }

  // Widget para logros individuales
  Widget _buildAchievementItem(String achievement) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          const Icon(Icons.check_circle, color: Colors.green, size: 20),
          const SizedBox(width: 10),
          Text(
            achievement,
            style: const TextStyle(fontSize: 16, color: Colors.white70),
          ),
        ],
      ),
    );
  }

  Widget _buildRoutineItem(String routine, String date) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          const Icon(Icons.fitness_center, color: Colors.blue, size: 20),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              routine,
              style: const TextStyle(fontSize: 16, color: Colors.white70),
            ),
          ),
          Text(
            date,
            style: const TextStyle(fontSize: 14, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
