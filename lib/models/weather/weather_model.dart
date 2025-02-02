import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_model.freezed.dart';
part 'weather_model.g.dart';

@freezed
class Weather with _$Weather {
  @JsonSerializable(explicitToJson: true)
  factory Weather({
    required CurrentWeatherResponse current,
  }) = _Weather;

  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);
}

@freezed
class CurrentWeatherResponse with _$CurrentWeatherResponse {
  factory CurrentWeatherResponse({
    @JsonKey(name: 'temp_c') required double tempC,
    required Condition condition,
    @JsonKey(name: 'wind_kph') required double windKph,
    @JsonKey(name: 'wind_dir') required String windDir,
    @JsonKey(name: 'pressure_mb') required double pressureMb,
    required int humidity,
    required int cloud,
    @JsonKey(name: 'feelslike_c') required double feelsLikeC,
    @JsonKey(name: 'vis_km') required double visKm,
    required double uv,
  }) = _CurrentWeatherResponse;

  factory CurrentWeatherResponse.fromJson(Map<String, dynamic> json) =>
      _$CurrentWeatherResponseFromJson(json);
}

@freezed
class Condition with _$Condition {
  factory Condition({
    required String text,
    required String icon,
    required int code,
  }) = _Condition;

  factory Condition.fromJson(Map<String, dynamic> json) =>
      _$ConditionFromJson(json);
}
