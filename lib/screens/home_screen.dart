import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,  // Arka planın tüm ekranı kaplamasına izin verir
      appBar: AppBar(
        title: const Text('StarHoops'),
        actions: [
          IconButton(
            icon: const Icon(CupertinoIcons.bell),
            onPressed: () {},
          ),
        ],
        backgroundColor: Colors.transparent,  // AppBar'ı şeffaf yapıyoruz
        elevation: 0,  // AppBar'ın gölgesini kaldırıyoruz
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              height: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 40,  // Yarıçapı, fotoğrafın boyutunu belirler
                    backgroundImage: AssetImage('assets/images/circle.jpg'),  // Fotoğrafın yolu
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Kullanıcı Adı',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(CupertinoIcons.home),
              title: const Text('Ana Sayfa'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(CupertinoIcons.person_alt),
              title: const Text('NBA Oyuncuları'),
              onTap: () {
                context.go('/nba-players'); // NBA oyuncuları ekranına yönlendirme
              },
            ),
            ListTile(
              leading: const Icon(CupertinoIcons.star),
              title: const Text('NBA Takımları'),
              onTap: () {
                context.go('/nba-teams'); // 🏀 NBA Takımları ekranına yönlendir
              },
            ),
            ListTile(
              leading: const Icon(CupertinoIcons.sportscourt_fill),
              title: const Text('Maç Takvimleri'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(CupertinoIcons.flame_fill),
              title: const Text('Highlights'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(CupertinoIcons.settings),
              title: const Text('Ayarlar'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          // Arka plan fotoğrafı tüm ekranı kaplar
          Positioned.fill(
            child: Image.asset(
              'assets/images/goat.jpg',  // Fotoğrafı buraya ekleyin
              fit: BoxFit.cover,  // Resmin tam ekranı kaplamasını sağlar
            ),
          ),
          // Ana içerik
          Positioned.fill(
            child: Align(
              alignment: Alignment.center,
              child: const Text(
                '',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.transparent,  // BottomNavigationBar'ı şeffaf yapıyoruz
        elevation: 0,  // Gölgeyi kaldırıyoruz
        items: const [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: 'Ana Sayfa',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.heart_fill),
            label: 'Favori Oyuncularım',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person),
            label: 'Profil',
          ),
        ],
        selectedItemColor: Colors.white,  // Seçilen öğe rengini beyaz yapıyoruz
        unselectedItemColor: Colors.white70,  // Seçilmeyen öğe rengini daha açık beyaz yapıyoruz
        onTap: (index) {
          if (index == 1) {
            context.go('/favorites'); // Favori oyuncular ekranına git
          } else if (index == 2) {
            context.go('/profile'); // Profil ekranına git
          }
        },
      ),
    );
  }
}
