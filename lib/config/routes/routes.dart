import 'package:go_router/go_router.dart';

import '../../screens/screens.dart';

class Routes {
  final router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        name: 'home',
        path: '/',
        builder: (context, state) => HomeScreen(),
      ),
      GoRoute(
        name: 'settings',
        path: '/settings',
        builder: (context, state) => const SettingsScreen(),
      ),
      GoRoute(
        path: '/favorites',
        builder: (context, state) => const FavoritePlacesScreen(),
      ),
      GoRoute(
          name: 'weatherPlace',
          path: '/weatherPlace',
          builder: (context, state) {
            final args = state.extra as Map<String, String>;
            return WeatherPlaceScreen(
              placeName: args['placeName']!,
              placeId: args['placeName']!,
            );
          }),
    ],
  );
}
