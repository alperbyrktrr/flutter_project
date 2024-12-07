// favori oyuncuların ekranı 
import 'package:flutter/material.dart';

class FavoritePlayersScreen extends StatelessWidget {
  const FavoritePlayersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favori Oyuncularım'),
      ),
      body: const Center(
        child: Text('Favori oyuncular buraya gelecek'),
      ),
    );
  }
}
