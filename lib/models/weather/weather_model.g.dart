// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeatherImpl _$$WeatherImplFromJson(Map<String, dynamic> json) =>
    _$WeatherImpl(
      current: CurrentWeatherResponse.fromJson(
          json['current'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$WeatherImplToJson(_$WeatherImpl instance) =>
    <String, dynamic>{
      'current': instance.current.toJson(),
    };

_$CurrentWeatherResponseImpl _$$CurrentWeatherResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CurrentWeatherResponseImpl(
      tempC: (json['temp_c'] as num).toDouble(),
      condition: Condition.fromJson(json['condition'] as Map<String, dynamic>),
      windKph: (json['wind_kph'] as num).toDouble(),
      windDir: json['wind_dir'] as String,
      pressureMb: (json['pressure_mb'] as num).toDouble(),
      humidity: (json['humidity'] as num).toInt(),
      cloud: (json['cloud'] as num).toInt(),
      feelsLikeC: (json['feelslike_c'] as num).toDouble(),
      visKm: (json['vis_km'] as num).toDouble(),
      uv: (json['uv'] as num).toDouble(),
    );

Map<String, dynamic> _$$CurrentWeatherResponseImplToJson(
        _$CurrentWeatherResponseImpl instance) =>
    <String, dynamic>{
      'temp_c': instance.tempC,
      'condition': instance.condition,
      'wind_kph': instance.windKph,
      'wind_dir': instance.windDir,
      'pressure_mb': instance.pressureMb,
      'humidity': instance.humidity,
      'cloud': instance.cloud,
      'feelslike_c': instance.feelsLikeC,
      'vis_km': instance.visKm,
      'uv': instance.uv,
    };

_$ConditionImpl _$$ConditionImplFromJson(Map<String, dynamic> json) =>
    _$ConditionImpl(
      text: json['text'] as String,
      icon: json['icon'] as String,
      code: (json['code'] as num).toInt(),
    );

Map<String, dynamic> _$$ConditionImplToJson(_$ConditionImpl instance) =>
    <String, dynamic>{
      'text': instance.text,
      'icon': instance.icon,
      'code': instance.code,
    };
