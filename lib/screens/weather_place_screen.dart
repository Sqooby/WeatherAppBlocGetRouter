import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubit/weather/weather_cubit.dart';
import 'package:weather_app/cubit/weather/weather_state.dart';

class WeatherPlaceScreen extends StatelessWidget {
  final double lat;
  final double lon;

  const WeatherPlaceScreen({Key? key, required this.lat, required this.lon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Weather Information")),
      body: BlocBuilder<WeatherCubit, WeatherState>(
        builder: (context, state) {
          if (state is WeatherLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is WeatherLoaded) {
            final weather = state.weather;
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Temperature: $weather°C"),
                  Text("Weather: $weather"),
                ],
              ),
            );
          } else if (state is WeatherError) {
            return Center(child: Text(state.message));
          }
          return const Center(child: Text("Fetching Weather Data..."));
        },
      ),
    );
  }
}
