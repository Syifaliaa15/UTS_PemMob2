import 'package:flutter/material.dart';
import 'main_app_screen.dart'; // Navigasi setelah sukses login
import 'register_screen.dart'; // Navigasi ke halaman Register

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login Aplikasi')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const TextField(
              decoration: InputDecoration(
                labelText: 'Username/Email',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.person),
              ),
            ),
            const SizedBox(height: 15),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.lock),
              ),
            ),
            const SizedBox(height: 30),
            // Tombol Login
            ElevatedButton(
              onPressed: () {
                // Logika Login: Simulasikan sukses
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => const MainAppScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
                foregroundColor: Colors.white,
                minimumSize: const Size(double.infinity, 50), // Lebar penuh
              ),
              child: const Text('LOGIN', style: TextStyle(fontSize: 18)),
            ),
            const SizedBox(height: 10),
            // Link ke Halaman Register
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const RegisterScreen()),
                );
              },
              child: const Text('Belum punya akun? Register di sini.'),
            ),
          ],
        ),
      ),
    );
  }
}