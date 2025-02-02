import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:retrofit/retrofit.dart';
import 'package:weather_app/models/weather/weather_model.dart';

part 'weather_service.g.dart';

@RestApi(baseUrl: "http://api.weatherapi.com/v1")
abstract class WeatherApiService {
  factory WeatherApiService(Dio dio, {String baseUrl}) = _WeatherApiService;

  @GET("/current.json")
  Future<Weather> getWeather(
    @Query('q') String name,
    @Query('key') String apiKey,
    @Query('aqi') String aqi,
  );
}
