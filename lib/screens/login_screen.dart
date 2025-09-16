import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:escola_musica_final/service/AuthService.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _authService = AuthService();
  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login de Professor'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _emailController,
              decoration: const InputDecoration(
                labelText: 'E-mail',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: 'Senha',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                // Vamos adicionar a lógica de login aqui
              },
              child: const Text('Entrar'),
            ),
          ],
        ),
      ),
    );
  }
  Future<void> _login() async {
    try {
      await _authService.signInWithEmailAndPassword(
        _emailController.text,
        _passwordController.text,
      );
      // ... (o resto da lógica de sucesso e erro)
    } on FirebaseAuthException catch (e) {
      // ... (o resto da lógica de erro)
    }
  }
}
