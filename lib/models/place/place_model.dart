import 'package:freezed_annotation/freezed_annotation.dart';

part 'place_model.freezed.dart';
part 'place_model.g.dart';

@freezed
class Place with _$Place {
  factory Place({
    required String placeId,
    required String mainText,
  }) = _Place;

  factory Place.fromJson(Map<String, dynamic> json) => _$PlaceFromJson(json);
}

@freezed
class PlaceResponse with _$PlaceResponse {
  factory PlaceResponse({
    required List<Place> predictions,
  }) = _PlaceResponse;

  factory PlaceResponse.fromJson(Map<String, dynamic> json) {
    final predictions = (json['predictions'] as List?)
            ?.map((place) => Place(
                  placeId: place["place_id"] ?? "",
                  mainText: place["structured_formatting"]?["main_text"] ?? "",
                ))
            .toList() ??
        [];
    return PlaceResponse(predictions: predictions);
  }
}

@freezed
class PlaceDetails with _$PlaceDetails {
  factory PlaceDetails({
    required double lat,
    required double lng,
  }) = _PlaceDetails;

  factory PlaceDetails.fromJson(Map<String, dynamic> json) {
    final location = json["result"]?["geometry"]?["location"];
    return PlaceDetails(
      lat: (location?['lat'] as num?)?.toDouble() ?? 0.0,
      lng: (location?['lng'] as num?)?.toDouble() ?? 0.0,
    );
  }
}
