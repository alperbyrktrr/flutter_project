import 'package:go_router/go_router.dart';
import '../screens/loading_screen.dart';
import '../screens/home_screen.dart';
import '../screens/favorite_players.dart'; // Favori oyuncular ekranı
import '../screens/profile_screen.dart'; // Profil ekranı import edildi
import '../screens/nba_players_screen.dart'; // NBA Oyuncuları ekranı import edildi

final router = GoRouter(
  initialLocation: '/', // Başlangıç rotası
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const LoadingScreen(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/favorites', // Favori oyuncular ekranı
      builder: (context, state) => const FavoritePlayersScreen(),
    ),
    GoRoute(
      path: '/profile', // Profil ekranı
      builder: (context, state) => const ProfileScreen(),
    ),
    GoRoute(
      path: '/nba-players', // NBA Oyuncuları ekranı
      builder: (context, state) => const NBAPlayersScreen(),
    ),
  ],
);
