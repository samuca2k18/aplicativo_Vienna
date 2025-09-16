import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:escola_musica_final/screens/login_screen.dart'; // Importe a tela de login aqui

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Escola de Música',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginScreen(),
    );
  }
}