import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/models/weather/weather_model.dart';

part 'weather_state.freezed.dart';

@freezed
class WeatherState with _$WeatherState {
  const factory WeatherState.initial() = WeatherInitial;
  const factory WeatherState.loading() = WeatherLoading;
  const factory WeatherState.loaded(Weather weather) = WeatherLoaded;
  const factory WeatherState.error(String message) = WeatherError;
}
