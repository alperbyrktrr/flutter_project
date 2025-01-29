import 'package:go_router/go_router.dart';
import '../screens/loading_screen.dart';
import '../screens/home_screen.dart';
import '../screens/favorite_players.dart';
import '../screens/profile_screen.dart';
import '../screens/nba_players_screen.dart';
import '../screens/nba_teams_screen.dart'; // NBA Takımları ekranını import ettik

final router = GoRouter(
  initialLocation: '/',
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
      path: '/favorites',
      builder: (context, state) => const FavoritePlayersScreen(),
    ),
    GoRoute(
      path: '/profile',
      builder: (context, state) => const ProfileScreen(),
    ),
    GoRoute(
      path: '/nba-players',
      builder: (context, state) => const NBAPlayersScreen(),
    ),
    GoRoute(
      path: '/nba-teams', // NBA Takımları ekranı için yeni route
      builder: (context, state) => const NBATeamsScreen(),
    ),
  ],
);
