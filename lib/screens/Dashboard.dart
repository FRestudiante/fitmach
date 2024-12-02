import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard - Fitmach'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2, 
          crossAxisSpacing: 10, 
          mainAxisSpacing: 10, 
          children: [
            _buildCard(
              icon: Icons.search,
              title: 'Agregar Compañeros - CRUD',
              onTap: () {
                Navigator.pushNamed(context, '/home_page');
              },
            ),
            _buildCard(
              icon: Icons.fitness_center,
              title: 'Rutinas Sugeridas',
              onTap: () {
                Navigator.pushNamed(context, '/routines');
              },
            ),
            _buildCard(
              icon: Icons.group,
              title: 'Retos Grupales',
              onTap: () {
                Navigator.pushNamed(context, '/challenges');
              },
            ),
            _buildCard(
              icon: Icons.person,
              title: 'Mi Perfil',
              onTap: () {
                Navigator.pushNamed(context, '/profile');
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCard({required IconData icon, required String title, required VoidCallback onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        color: Colors.grey[850],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 4,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 40, color: Colors.white),
            const SizedBox(height: 10),
            Text(
              title,
              style: const TextStyle(fontSize: 16, color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
