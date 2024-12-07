// profile ekranına gider 
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profilim'),
      ),
      body: const Center(
        child: Text(
          'Profilim hakkında bilgiler buraya gelecek.',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
