import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geocoding/geocoding.dart';
import 'package:weather_app/cubit/places/places_state.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather_app/database/fav_places_db.dart';
import 'package:weather_app/models/place/place_model.dart';
import 'package:weather_app/repositories/place/place_service.dart';

import 'package:flutter_dotenv/flutter_dotenv.dart';

class PlaceCubit extends Cubit<PlaceState> {
  final PlaceService placeService;
  final FavoritePlacesDatabase db = FavoritePlacesDatabase.instance;
  List<Place> favoritePlaces = [];
  Place? selectedPlace;

  PlaceCubit(this.placeService) : super(const PlaceInitial());

  Future<void> selectPlace(Place place) async {
    selectedPlace = place;
  }

  Place? getSelectedPlace() {
    return selectedPlace;
  }

  Future<void> searchPlaces(String query) async {
    try {
      emit(const PlaceLoading());
      final apiKey = dotenv.env['APIKEY'];

      final response = await placeService.searchPlaces(query, apiKey!);

      if (response.predictions.isNotEmpty) {
        emit(PlaceLoaded(response.predictions));
      } else {
        emit(const PlaceError("Brak miejsc"));
      }
    } catch (e) {
      emit(PlaceError(e.toString()));
    }
  }

  Future<void> toggleFavorite(Place place) async {
    if (isFavorite(place.description)) {
      await db.removeFavorite(place.placeId);
    } else {
      await db.addFavorite(place.description, place.placeId);
    }
    await loadFavorites();
  }

  Future<void> initializeFavorites() async {
    await loadFavorites();
  }

  bool isFavorite(String name) {
    return favoritePlaces.any((fav) => fav.description == name);
  }

  void clearPlaces() {
    emit(const PlaceInitial());
  }

  Future<void> getCurrentLocation() async {
    emit(const PlaceLoading());

    try {
      bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) {
        emit(const PlaceError("Usługa lokalizacji jest wyłączona"));
        return;
      }

      LocationPermission permission = await Geolocator.checkPermission();

      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.deniedForever) {
          emit(const PlaceError("Brak uprawnień do lokalizacji"));
          return;
        }
      }

      Position position = await Geolocator.getCurrentPosition(
        locationSettings:
            const LocationSettings(accuracy: LocationAccuracy.high),
      );

      List<Placemark> placemarks = await placemarkFromCoordinates(
        position.latitude,
        position.longitude,
      );

      if (placemarks.isNotEmpty) {
        String city = placemarks.first.locality ?? "Nieznana lokalizacja";
        emit(PlaceLoaded([Place(placeId: "GPS", description: city)]));
      } else {
        emit(const PlaceError("Nie udało się pobrać nazwy miejscowości"));
      }
    } catch (e) {
      emit(const PlaceError("Błąd pobierania lokalizacji"));
    }
  }

  Future<void> addFavoriteLocation(String name, String id) async {
    await db.addFavorite(name, id);
    await loadFavorites();
  }

  Future<void> loadFavorites() async {
    emit(const PlaceLoading());
    final favorites = await db.getFavorites();

    final places = favorites
        .map((e) => Place(
              placeId: e["placeId"].toString(),
              description: e["name"],
            ))
        .toList();
    favoritePlaces = places;
    emit(PlaceFavoritesLoaded(places));
  }

  Future<void> removeFavoriteLocation(String id) async {
    await db.removeFavorite(id);

    loadFavorites();
  }
}
