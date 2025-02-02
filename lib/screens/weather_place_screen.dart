import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubit/places/places_cubit.dart';
import 'package:weather_app/cubit/weather/weather_cubit.dart';
import 'package:weather_app/cubit/weather/weather_state.dart';
import 'package:weather_app/models/place/place_model.dart';
import 'package:weather_app/cubit/places/places_state.dart';

class WeatherPlaceScreen extends StatefulWidget {
  final String placeName;
  final String placeId;

  const WeatherPlaceScreen(
      {super.key, required this.placeName, required this.placeId});

  @override
  State<WeatherPlaceScreen> createState() => _WeatherPlaceScreenState();
}

class _WeatherPlaceScreenState extends State<WeatherPlaceScreen> {
  late bool isFavorite;

  @override
  void initState() {
    super.initState();
    isFavorite = context.read<PlaceCubit>().isFavorite(widget.placeName);
  }

  void toogleFavourite() {
    final place = Place(placeId: widget.placeId, description: widget.placeName);
    context.read<PlaceCubit>().toggleFavorite(place);
    setState(() {
      isFavorite = !isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pogoda w ${widget.placeName}')),
      body: BlocBuilder<WeatherCubit, WeatherState>(
        builder: (context, state) {
          if (state is WeatherLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is WeatherLoaded) {
            final weather = state.weather.current;
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  BlocSelector<PlaceCubit, PlaceState, bool>(
                    selector: (state) {
                      return context
                          .read<PlaceCubit>()
                          .isFavorite(widget.placeName);
                    },
                    builder: (context, isFav) {
                      return IconButton(
                        icon: Icon(
                          isFav ? Icons.star : Icons.star_border,
                          color: isFav ? Colors.yellow : null,
                        ),
                        onPressed: () {
                          final place = Place(
                              placeId: widget.placeId,
                              description: widget.placeName);
                          context.read<PlaceCubit>().toggleFavorite(place);
                        },
                      );
                    },
                  ),
                  Text(
                    '${weather.tempC}°C',
                    style: const TextStyle(
                        fontSize: 60, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    weather.condition.text,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 10),
                  Image.network('https:${weather.condition.icon}', width: 80),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _WeatherDetail(
                        icon: Icons.thermostat,
                        label: "Odczuwalna",
                        value: '${weather.feelsLikeC}°C',
                      ),
                      _WeatherDetail(
                        icon: Icons.water_drop,
                        label: "Wilgotność",
                        value: '${weather.humidity}%',
                      ),
                      _WeatherDetail(
                        icon: Icons.speed,
                        label: "Ciśnienie",
                        value: '${weather.pressureMb} hPa',
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _WeatherDetail(
                        icon: Icons.air,
                        label: "Wiatr",
                        value: '${weather.windKph} km/h',
                      ),
                      _WeatherDetail(
                        icon: Icons.explore,
                        label: "Kierunek",
                        value: weather.windDir,
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Text(
                    "Widoczność: ${weather.visKm} km",
                    style: const TextStyle(fontSize: 18),
                  ),
                  Text(
                    "UV Index: ${weather.uv}",
                    style: const TextStyle(fontSize: 18),
                  ),
                ],
              ),
            );
          } else if (state is WeatherError) {
            return Center(child: Text(state.message));
          }
          return Container();
        },
      ),
    );
  }
}

class _WeatherDetail extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const _WeatherDetail({
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, size: 32, color: Colors.blue),
        const SizedBox(height: 5),
        Text(
          label,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        Text(
          value,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
