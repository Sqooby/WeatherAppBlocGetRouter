import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubit/places/places_state.dart';

import 'package:weather_app/repositories/place/place_service.dart';

import 'package:flutter_dotenv/flutter_dotenv.dart';

class PlaceCubit extends Cubit<PlaceState> {
  final PlaceService placeService;

  PlaceCubit(this.placeService) : super(PlaceInitial());

  Future<void> searchPlaces(String query) async {
    try {
      emit(const PlaceLoading());
      final apiKey = dotenv.env['APIKEY'];

      final response = await placeService.searchPlaces(query, apiKey!);
      ;

      if (response.predictions.isNotEmpty) {
        emit(PlaceLoaded(response.predictions));
      } else {
        emit(const PlaceError("Brak miejsc"));
      }
    } catch (e) {
      print("API Error: $e");
      emit(PlaceError(e.toString()));
    }
  }

  Future<void> fetchPlaceDetails(String placeId) async {
    try {
      final apiKey = dotenv.env['APIKEY'];

      if (apiKey == null || apiKey.isEmpty) {
        emit(PlaceError("API Key is missing!"));
        return;
      }

      final response = await placeService.getPlaceDetails(placeId, apiKey);
      print(response.lat);
    } catch (e) {
      emit(PlaceError(e.toString()));
    }
  }
}
