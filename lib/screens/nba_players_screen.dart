import 'package:flutter/material.dart';

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
        backgroundColor: Colors.orange,  // Daha sportif bir renk seçildi
      ),
      body: ListView.builder(
        itemCount: players.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),  
            elevation: 10,  // Gölgelendirme etkisi arttırıldı
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),  // Köşe yuvarlama arttırıldı
            ),
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(vertical: 20, horizontal: 24),  
              leading: Container(
                width: 75,  // Fotoğrafın genişliği büyütüldü
                height: 75, // Fotoğrafın yüksekliği büyütüldü
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(players[index]['image']!),
                    fit: BoxFit.cover, 
                  ),
                  borderRadius: BorderRadius.circular(16),  // Köşe yuvarlama
                  border: Border.all(
                    color: Colors.orange, // Çerçeve rengi
                    width: 4, // Çerçeve kalınlığı
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.orange.withOpacity(0.5),  // Daha yumuşak gölge
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
                  fontSize: 26,  // Yazı boyutu büyütüldü
                  fontWeight: FontWeight.bold,
                  color: Colors.black87, // Yazı rengi koyulaştırıldı
                ),
              ),
              subtitle: Text(
                "NBA Star",  // Alt başlık eklenebilir
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[700],
                ),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 30,
                color: Colors.orange,  // İkon rengi
              ),
              onTap: () {
                // Detay sayfası eklenebilir
              },
            ),
          );
        },
      ),
    );
  }
}
