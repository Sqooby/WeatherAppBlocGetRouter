import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'package:weather_app/cubit/weather/weather_state.dart';

import '../../repositories/weather/weather_service.dart';

class WeatherCubit extends Cubit<WeatherState> {
  final WeatherApiService weatherService;

  WeatherCubit(this.weatherService) : super(const WeatherState.initial());

  Future<void> fetchWeather(String name) async {
    String apiKey = dotenv.get('APIKEYWEATHER');
    emit(const WeatherState.loading());
    try {
      final weather = await weatherService.getWeather(name, apiKey, 'no');

      emit(WeatherState.loaded(weather));
    } catch (e) {
      print(e);
      emit(WeatherState.error(e.toString()));
    }
  }
}
