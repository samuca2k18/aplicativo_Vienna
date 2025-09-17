// lib/screens/dashboard_screen.dart

import 'package:flutter/material.dart';
import 'package:escola_musica_final/screens/add_student_screen.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard do Professor'),
      ),
      body: const Center(
        child: Text('Bem-vindo, professor!'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const AddStudentScreen(),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}