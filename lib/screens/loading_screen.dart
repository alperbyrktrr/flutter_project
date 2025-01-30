import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SizedBox.expand(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo bölümü
            GestureDetector(
              onTap: () => context.go('/home'),
              child: Container(
                width: 300,
                height: 300,
                child: Image.asset(
                  'assets/images/michealjordan.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),
            const SizedBox(height: 30),

            // Lottie Yükleme Animasyonu (Beyaz Renkli)
            SizedBox(
              width: 100, // Animasyon boyutu
              height: 100,
              child: Lottie.asset(
                'assets/motions/loadinglottie.json',
                fit: BoxFit.contain,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
