import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NBAPlayersScreen extends StatelessWidget {
  const NBAPlayersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> players = [
      {"name": "LeBron James", "image": "assets/images/lebronjames.png"},
      {"name": "Kevin Durant", "image": "assets/images/kevindurantt.png"},
      {"name": "Stephen Curry", "image": "assets/images/stephencurryy.png"},
      {"name": "Giannis Antetokounmpo", "image": "assets/images/gianniss.png"},
      {"name": "Ja Morant", "image": "assets/images/jamorantt.png"},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('NBA Oyuncuları'),
        backgroundColor: Colors.orange,
      ),
      body: ListView.builder(
        itemCount: players.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(vertical: 20, horizontal: 24),
              leading: Container(
                width: 75,
                height: 75,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(players[index]['image']!),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: Colors.orange,
                    width: 4,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.orange.withOpacity(0.5),
                      spreadRadius: 4,
                      blurRadius: 10,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
              ),
              title: Text(
                players[index]['name']!,
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              subtitle: Text(
                "NBA Star",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[700],
                ),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 30,
                color: Colors.orange,
              ),
              onTap: () {
                // LeBron James'e tıklayınca detay sayfasına yönlendiriyoruz
                if (players[index]['name'] == 'LeBron James') {
                  context.go('/lebron-james-detail');  // LeBron James detay sayfasına yönlendirme
                }
              },
            ),
          );
        },
      ),
    );
  }
}
