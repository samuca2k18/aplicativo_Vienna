// lib/screens/add_student_screen.dart

import 'package:flutter/material.dart';

class AddStudentScreen extends StatefulWidget {
  const AddStudentScreen({super.key});

  @override
  State<AddStudentScreen> createState() => _AddStudentScreenState();
}

class _AddStudentScreenState extends State<AddStudentScreen> {
  final _nameController = TextEditingController();
  final _instrumentController = TextEditingController();
  final _dayController = TextEditingController();
  final _timeController = TextEditingController();

  void _saveStudent() {
    // A lógica de salvar será adicionada aqui.
    // Por enquanto, apenas imprima os dados para teste.
    print('Nome: ${_nameController.text}');
    print('Instrumento: ${_instrumentController.text}');
    print('Dia: ${_dayController.text}');
    print('Horário: ${_timeController.text}');

    // Voltar para a tela anterior
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registrar Novo Aluno'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(labelText: 'Nome do Aluno'),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _instrumentController,
              decoration: const InputDecoration(labelText: 'Instrumento'),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _dayController,
              decoration: const InputDecoration(labelText: 'Dia da Semana (ex: Segunda-feira)'),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _timeController,
              decoration: const InputDecoration(labelText: 'Horário da Aula (ex: 14:00)'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _saveStudent,
              child: const Text('Salvar Aluno'),
            ),
          ],
        ),
      ),
    );
  }
}