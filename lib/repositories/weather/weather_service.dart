import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:weather_app/models/weather/weather_model.dart';

part 'weather_service.g.dart';

@RestApi(baseUrl: "https://api.openweathermap.org/data/2.5/onecall")
abstract class WeatherApiService {
  factory WeatherApiService(Dio dio, {String baseUrl}) = _WeatherApiService;

  @GET("")
  Future<WeatherModel> getWeather(
    @Query("lat") double lat,
    @Query("lon") double lon,
    @Query("appid") String apiKey,
    @Query("units") String units,
  );
}
