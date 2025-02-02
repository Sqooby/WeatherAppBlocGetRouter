import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:go_router/go_router.dart';

import 'package:weather_app/cubit/places/places_cubit.dart';
import 'package:weather_app/cubit/places/places_state.dart';
import 'package:weather_app/cubit/weather/weather_cubit.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController textController = TextEditingController();

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.read<PlaceCubit>().initializeFavorites();
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
          title: const Text('Wpisz swoją lokalizację i sprawdz pogodę!')),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            TextField(
              onChanged: (query) {
                context.read<PlaceCubit>().searchPlaces(query);
              },
              decoration: const InputDecoration(labelText: 'Wpisz miejsce'),
            ),
            Expanded(
              child: BlocBuilder<PlaceCubit, PlaceState>(
                builder: (context, state) {
                  if (state is PlaceLoading) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (state is PlaceLoaded) {
                    return ListView.builder(
                      itemCount: state.places.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                            onTap: () {
                              context
                                  .read<PlaceCubit>()
                                  .selectPlace(state.places[index]);
                              context.read<WeatherCubit>().fetchWeather(
                                  state.places[index].description);
                              context.push(
                                '/weatherPlace',
                                extra: {
                                  "placeName": state.places[index].description,
                                  "placeId": state.places[index].placeId,
                                },
                              );
                              context.read<PlaceCubit>().clearPlaces();
                            },
                            title: Text(state.places[index].description));
                      },
                    );
                  } else if (state is PlaceError) {
                    return Center(child: Text(state.message));
                  }
                  return Container();
                },
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  context.read<PlaceCubit>().getCurrentLocation();
                },
                child: const Text('Aktualna Lokazliacja'))
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Strona główna',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Ulubione miejsca',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Ustawienia',
          ),
        ],
        onTap: (index) {
          if (index == 1) {
            context.push('/favorites');
          } else if (index == 2) {
            context.push('/settings');
          }
        },
      ),
    ));
  }
}
