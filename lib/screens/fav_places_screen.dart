import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:weather_app/cubit/places/places_cubit.dart';
import 'package:weather_app/cubit/places/places_state.dart';
import 'package:weather_app/cubit/weather/weather_cubit.dart';

class FavoritePlacesScreen extends StatelessWidget {
  const FavoritePlacesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<PlaceCubit>().loadFavorites();

    return Scaffold(
      appBar: AppBar(title: const Text("Ulubione miejsca")),
      body: BlocBuilder<PlaceCubit, PlaceState>(
        builder: (context, state) {
          if (state is PlaceFavoritesLoaded) {
            if (state.favPlaces.isEmpty) {
              return const Center(child: Text("Brak ulubionych miejsc."));
            }
            return ListView.builder(
              itemCount: state.favPlaces.length,
              itemBuilder: (context, index) {
                final place = state.favPlaces[index];

                return ListTile(
                  onTap: () {
                    context.read<PlaceCubit>().selectPlace(place);
                    context
                        .read<WeatherCubit>()
                        .fetchWeather(place.description);
                    context.push('/weatherPlace', extra: {
                      "placeName": place.description,
                      "placeId": place.placeId
                    });
                  },
                  title: Text(place.description),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete, color: Colors.red),
                    onPressed: () {
                      context
                          .read<PlaceCubit>()
                          .removeFavoriteLocation(place.description);
                    },
                  ),
                );
              },
            );
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
