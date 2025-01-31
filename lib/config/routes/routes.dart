import 'package:go_router/go_router.dart';

import '../../screens/screens.dart';

class Routes {
// GoRouter configuration
  final router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        name:
            'home', // Optional, add name to your routes. Allows you navigate by name instead of path
        path: '/',
        builder: (context, state) => HomeScreen(),
      ),
      GoRoute(
          name: 'weatherPlace',
          path: '/weatherPlace',
          builder: (context, state) {
            final lat = double.parse(state.pathParameters['lat']!);
            final lon = double.parse(state.pathParameters['lon']!);
            return WeatherPlaceScreen(lat: lat, lon: lon);
          }),
    ],
  );
}
