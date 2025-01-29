import 'package:flutter/material.dart';

class NBATeamsScreen extends StatelessWidget {
  const NBATeamsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> teams = [
      {"name": "Los Angeles Lakers", "image": "assets/images/lakers.png"},
      {"name": "Memphis Grizzlies", "image": "assets/images/memphiss.png"},
      {"name": "Milwaukee Bucks", "image": "assets/images/bucks.png"},
      {"name": "Golden State Warriors", "image": "assets/images/gsw.png"},
      {"name": "Phoenix Suns", "image": "assets/images/phx.png"},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('NBA Takımları'),
        backgroundColor: Colors.blue,  // Çerçeve mavi renk olacak
      ),
      body: ListView.builder(
        itemCount: teams.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),  
            elevation: 10,  // Gölgelendirme etkisi
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),  // Köşeler yuvarlatıldı
            ),
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(vertical: 20, horizontal: 24),  
              leading: Container(
                width: 75,  // Fotoğrafın genişliği
                height: 75, // Fotoğrafın yüksekliği
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(teams[index]['image']!), // Takım fotoğrafı eklenecek
                    fit: BoxFit.cover, 
                  ),
                  borderRadius: BorderRadius.circular(16),  // Köşe yuvarlama
                  border: Border.all(
                    color: Colors.blue, // Çerçeve rengi MAVİ
                    width: 4, // Çerçeve kalınlığı
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blue.withOpacity(0.5),  // Daha yumuşak gölge
                      spreadRadius: 4,
                      blurRadius: 10,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
              ),
              title: Text(
                teams[index]['name']!,
                style: TextStyle(
                  fontSize: 26,  // Yazı boyutu büyütüldü
                  fontWeight: FontWeight.bold,
                  color: Colors.black87, // Yazı rengi koyulaştırıldı
                ),
              ),
              subtitle: Text(
                "NBA Team",  // Alt başlık eklenebilir
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[700],
                ),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 30,
                color: Colors.blue,  // İkon rengi MAVİ
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
