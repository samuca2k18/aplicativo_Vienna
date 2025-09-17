// No arquivo lib/main.dart

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:escola_musica_final/screens/login_screen.dart';
import 'package:escola_musica_final/screens/DashboardScreen.dart';

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
      home: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          // mostra um indicador de carregamento caso o firebase ainda estiver autenticando
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
          // mostra o dash board caso o usuario tiver logado
          if (snapshot.hasData) {
            return const DashboardScreen();
          }
          // caso não estiver mostra a tela de login
          return const LoginScreen();
        },
      ),
    );
  }
}