import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ayarlar'),
        elevation: 0,
      ),
      body: ListView(
        children: [
          const SizedBox(height: 16),

          // Profil Ayarları
          ListTile(
            leading: const CircleAvatar(child: Icon(Icons.person)),
            title: const Text('Profil Ayarları'),
            subtitle: const Text('Hesap bilgilerini düzenle'),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () => context.push('/profile'),
          ),

          const Divider(),

          // Bildirim Ayarları
          SwitchListTile(
            secondary: const Icon(Icons.notifications_outlined),
            title: const Text('Bildirimler'),
            subtitle: const Text('Bildirim tercihlerini yönet'),
            value: true,
            onChanged: (bool value) {},
          ),

          // Koyu Tema Ayarları
          SwitchListTile(
            secondary: const Icon(Icons.dark_mode_outlined),
            title: const Text('Koyu Tema'),
            subtitle: const Text('Uygulama temasını değiştir'),
            value: false,  // Burada, koyu tema kullanımını yönetmek için bir değişken ekleyebilirsiniz
            onChanged: (bool value) {
              // Burada tema değişimi yapılabilir
            },
          ),

          const Divider(),

          // Güvenlik Ayarları
          ListTile(
            leading: const Icon(Icons.security),
            title: const Text('Güvenlik'),
            subtitle: const Text('Şifre ve güvenlik ayarları'),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {},
          ),

          // Gizlilik Ayarları
          ListTile(
            leading: const Icon(Icons.privacy_tip_outlined),
            title: const Text('Gizlilik'),
            subtitle: const Text('Gizlilik tercihlerini yönet'),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {},
          ),

          const Divider(),

          // Yardım Ayarları
          ListTile(
            leading: const Icon(Icons.help_outline),
            title: const Text('Yardım'),
            subtitle: const Text('SSS ve destek'),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {},
          ),

          // Hakkında
          ListTile(
            leading: const Icon(Icons.info_outline),
            title: const Text('Hakkında'),
            subtitle: const Text('Uygulama bilgileri'),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {},
          ),

          const Divider(),

          // Çıkış Yap
          ListTile(
            leading: const Icon(Icons.logout, color: Colors.red),
            title: const Text('Çıkış Yap', style: TextStyle(color: Colors.red)),
            onTap: () {
              // Burada çıkış yapmak için uygulamanızda uygun bir işlem yapılabilir.
              // Örneğin, kullanıcının oturumunu sonlandırmak veya ana ekrana yönlendirmek.
              // context.go('/');  // Eğer çıkış sonrası ana sayfaya yönlendirecekseniz
            },
          ),
        ],
      ),
    );
  }
}
