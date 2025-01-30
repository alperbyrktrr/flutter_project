import 'package:flutter/material.dart';

class LeBronJamesDetailScreen extends StatelessWidget {
  const LeBronJamesDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LeBron James İstatistikleri'),
        backgroundColor: Colors.orange,
        elevation: 15,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // LeBron James görseli
            Center(
              child: Container(
                width: 300,  // Daha geniş bir görsel boyutu
                height: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/lebronjames.png'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.orange.withOpacity(0.6),  // Şeffaf gölge
                      spreadRadius: 8,
                      blurRadius: 20,
                      offset: Offset(0, 10),  // Gölgeyi biraz aşağıya kaydırdık
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30),
            // Kariyer İstatistikleri başlığı
            const Text(
              'Kariyer İstatistikleri',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.orange,
                letterSpacing: 1.5,
              ),
            ),
            const SizedBox(height: 15),
            // İstatistiklerin listelenmesi
            buildStatText('Yıl: 2024'),
            buildStatText('Takım: Los Angeles Lakers'),
            buildStatText('Sayılar: 27.0 '),
            buildStatText('Asist: 7.3 '),
            buildStatText('Rebound: 7.4 '),
            buildStatText('Yıldız: 18x NBA All-Star'),
            const SizedBox(height: 30),
            // Diğer İstatistikler başlığı
            const Text(
              'Diğer Bilgiler',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.orange,
                letterSpacing: 1.3,
              ),
            ),
            const SizedBox(height: 15),
            // Diğer istatistikler
            buildStatText('NBA Şampiyonlukları: 4'),
            buildStatText('MVP Ödülleri: 4'),
            buildStatText('NBA Finalleri: 10 kez'),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  // Statüleri daha ilgi çekici hale getiren widget
  Widget buildStatText(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 22,  // Yazı boyutunu büyüttük
          color: Colors.black87,
          fontWeight: FontWeight.w600,  // Yazıları daha kalın hale getirdik
        ),
      ),
    );
  }
}
