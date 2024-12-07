import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart'; // go_router import edildi

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
              onTap: () => context.go('/home'), // Tıklama işlevi eklendi
              child: Container(
                width: 300,
                height: 300,
                child: Image.asset(
                  'assets/images/michealjordan.png', // diğer ekrana geçmek için lütfen logoya tıklayın!
                  fit: BoxFit.contain,
                ),
              ),
            ),
            const SizedBox(height: 30),

            // Yükleme göstergesi
            const CircularProgressIndicator(
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
