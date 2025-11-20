import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  
  final String nama = "Syifa AUlia Fitri";
  final String npm = "23552011013";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Aplikasi PetaKu (Pemrograman Mobile)',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.blueAccent),
          ),
          const Divider(height: 30),
          const Text(
            'Deskripsi:',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
          const Text(
            'Aplikasi mobile ini dibuat menggunakan Flutter SDK untuk memenuhi tugas mata kuliah Pemrograman Mobile. Fitur utama mencakup autentikasi pengguna, daftar informasi, dan integrasi library peta.',
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 20),
          const Text(
            'Library Terintegrasi:',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
          const Text(
            'Flutter Maps (OpenStreetMap)',
            style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
          ),
          const Spacer(),
          
          Center(
            child: Text(
              'Copyright © 2025\nOleh: $nama (NPM: $npm)',
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 14, fontStyle: FontStyle.italic, color: Colors.grey),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}