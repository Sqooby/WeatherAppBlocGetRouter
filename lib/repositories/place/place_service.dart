import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:weather_app/models/place/place_model.dart';

part 'place_service.g.dart';

@RestApi(baseUrl: 'https://maps.googleapis.com/maps/api/place')
abstract class PlaceService {
  factory PlaceService(Dio dio, {String baseUrl}) = _PlaceService;

  @GET('/autocomplete/json')
  Future<PlaceResponse> searchPlaces(
    @Query('input') String query,
    @Query('key') String apiKey,
  );

  @GET('/details/json')
  Future<PlaceDetails> getPlaceDetails(
    @Query('place_id') String placeId,
    @Query('key') String apiKey,
  );
}
