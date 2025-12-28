import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profile')),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.person, size: 80),
            SizedBox(height: 16),
            Text('Nama: (isi nama kamu)'),
            Text('NIM: (isi NIM kamu)'),
            Text('Kelas: (isi kelas kamu)'),
          ],
        ),
      ),
    );
  }
}
