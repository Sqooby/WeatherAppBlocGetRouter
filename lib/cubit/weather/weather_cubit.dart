import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';

import 'package:weather_app/cubit/weather/weather_state.dart';

import '../../repositories/weather/weather_service.dart';

class WeatherCubit extends Cubit<WeatherState> {
  final WeatherApiService weatherService;

  WeatherCubit(this.weatherService) : super(const WeatherState.initial());

  Future<void> fetchWeather(double lat, double lon, String apiKey) async {
    emit(const WeatherState.loading());
    try {
      final weather =
          await weatherService.getWeather(lat, lon, apiKey, "metric");
      emit(WeatherState.loaded(weather));
    } catch (e) {
      emit(const WeatherState.error("Failed to fetch weather data"));
    }
  }
}
