import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:go_router/go_router.dart';
import 'package:google_places_flutter/google_places_flutter.dart';
import 'package:google_places_flutter/model/place_type.dart';
import 'package:google_places_flutter/model/prediction.dart';
import 'package:weather_app/cubit/places/places_cubit.dart';
import 'package:weather_app/cubit/places/places_state.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  TextEditingController textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
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
                              context.read<PlaceCubit>().fetchPlaceDetails(
                                  state.places[index].placeId);
                            },
                            title: Text(state.places[index].mainText));
                      },
                    );
                  } else if (state is PlaceError) {
                    return Center(child: Text(state.message));
                  }
                  return Container();
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
