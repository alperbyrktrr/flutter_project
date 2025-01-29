import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profilim'),
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/galaksi.jpg', // Arka plan resmi
              fit: BoxFit.cover,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/circle.jpg'), // Profil resmi
              ),
              const SizedBox(height: 10),
              const Text(
                'Alper Bayraktar',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white, // Yazı rengi beyaz
                  shadows: [
                    Shadow(
                      offset: Offset(2.0, 2.0),
                      blurRadius: 3.0,
                      color: Colors.black26, // Gölge rengi
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                'kullanici@example.com',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white, // Yazı rengi beyaz
                  shadows: [
                    Shadow(
                      offset: Offset(2.0, 2.0),
                      blurRadius: 3.0,
                      color: Colors.black26, // Gölge rengi
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: const [
                      Text(
                        'Favoriler',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white, // Yazı rengi beyaz
                          shadows: [
                            Shadow(
                              offset: Offset(2.0, 2.0),
                              blurRadius: 3.0,
                              color: Colors.black26, // Gölge rengi
                            ),
                          ],
                        ),
                      ),
                      Text(
                        '10',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white, // Yazı rengi beyaz
                          shadows: [
                            Shadow(
                              offset: Offset(2.0, 2.0),
                              blurRadius: 3.0,
                              color: Colors.black26, // Gölge rengi
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: const [
                      Text(
                        'Takip Edilen',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white, // Yazı rengi beyaz
                          shadows: [
                            Shadow(
                              offset: Offset(2.0, 2.0),
                              blurRadius: 3.0,
                              color: Colors.black26, // Gölge rengi
                            ),
                          ],
                        ),
                      ),
                      Text(
                        '5',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white, // Yazı rengi beyaz
                          shadows: [
                            Shadow(
                              offset: Offset(2.0, 2.0),
                              blurRadius: 3.0,
                              color: Colors.black26, // Gölge rengi
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Profili düzenleme işlemi
                },
                child: const Text('Profili Düzenle'),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 250, 250, 250)),
                onPressed: () {
                  // Çıkış işlemi
                },
                child: const Text('Çıkış Yap'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
