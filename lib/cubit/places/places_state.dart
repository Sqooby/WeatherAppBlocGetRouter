import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/models/place/place_model.dart';
part 'places_state.freezed.dart';

@freezed
abstract class PlaceState with _$PlaceState {
  const factory PlaceState.initial() = PlaceInitial;
  const factory PlaceState.loading() = PlaceLoading;
  const factory PlaceState.loaded(List<Place> places) = PlaceLoaded;
  const factory PlaceState.error(String message) = PlaceError;
  const factory PlaceState.favoritesLoaded(List<Place> favPlaces) =
      PlaceFavoritesLoaded;
}
