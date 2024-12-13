import 'package:flutter/material.dart';

class FavoritePlayersScreen extends StatefulWidget {
  const FavoritePlayersScreen({super.key});

  @override
  _FavoritePlayersScreenState createState() => _FavoritePlayersScreenState();
}

class _FavoritePlayersScreenState extends State<FavoritePlayersScreen> {
  final List<Map<String, String>> allPlayers = [
    {'name': 'LeBron James', 'team': 'Lakers', 'image': 'assets/images/lebronjames.png'},
    {'name': 'Stephen Curry', 'team': 'Warriors', 'image': 'assets/images/stephencurryy.png'},
    {'name': 'Kevin Durant', 'team': 'Suns', 'image': 'assets/images/kevindurantt.png'},
    {'name': 'Giannis Antetokounmpo', 'team': 'Bucks', 'image': 'assets/images/gianniss.png'},
    {'name': 'Ja Morant', 'team': 'Grizzlies', 'image': 'assets/images/jamorantt.png'},
  ];

  final List<Map<String, String>> favoritePlayers = [];

  void toggleFavorite(Map<String, String> player) {
    setState(() {
      if (favoritePlayers.contains(player)) {
        favoritePlayers.remove(player);
      } else {
        favoritePlayers.add(player);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favori Oyuncularım'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return ListView.builder(
                    itemCount: allPlayers.length,
                    itemBuilder: (context, index) {
                      final player = allPlayers[index];
                      final isFavorite = favoritePlayers.contains(player);

                      return ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage(player['image']!),
                        ),
                        title: Text(player['name']!),
                        subtitle: Text(player['team']!),
                        trailing: IconButton(
                          icon: Icon(
                            isFavorite ? Icons.favorite : Icons.favorite_border,
                            color: isFavorite ? Colors.red : Colors.grey,
                          ),
                          onPressed: () {
                            toggleFavorite(player);
                          },
                        ),
                      );
                    },
                  );
                },
              );
            },
          ),
        ],
      ),
      body: favoritePlayers.isEmpty
          ? const Center(
              child: Text(
                'Henüz favori oyuncu eklenmedi!',
                style: TextStyle(fontSize: 16),
              ),
            )
          : ListView.builder(
              itemCount: favoritePlayers.length,
              itemBuilder: (context, index) {
                final player = favoritePlayers[index];
                return Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(player['image']!),
                    ),
                    title: Text(player['name']!),
                    subtitle: Text(player['team']!),
                    trailing: IconButton(
                      icon: const Icon(
                        Icons.favorite,
                        color: Colors.red,
                      ),
                      onPressed: () {
                        toggleFavorite(player); // Favoriden çıkarma işlemi
                      },
                    ),
                  ),
                );
              },
            ),
    );
  }
}
