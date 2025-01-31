import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';
import 'package:weather_app/config/routes/routes.dart';
import 'package:weather_app/cubit/places/places_cubit.dart';
import 'package:weather_app/cubit/weather/weather_cubit.dart';
import 'package:weather_app/repositories/place/place_service.dart';
import 'package:weather_app/repositories/weather/weather_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: '.env');

  final dio = Dio();

  GetIt.I.registerSingleton<PlaceService>(PlaceService(dio));
  GetIt.I.registerSingleton<WeatherApiService>(WeatherApiService(dio));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => PlaceCubit(GetIt.I.get<PlaceService>())),
        BlocProvider(
            create: (context) =>
                WeatherCubit(GetIt.I.get<WeatherApiService>())),
      ],
      child: MaterialApp.router(
        routerConfig: Routes().router,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
      ),
    );
  }
}
