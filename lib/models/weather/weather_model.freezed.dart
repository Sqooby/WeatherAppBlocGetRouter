// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Weather _$WeatherFromJson(Map<String, dynamic> json) {
  return _Weather.fromJson(json);
}

/// @nodoc
mixin _$Weather {
  CurrentWeatherResponse get current => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherCopyWith<Weather> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherCopyWith<$Res> {
  factory $WeatherCopyWith(Weather value, $Res Function(Weather) then) =
      _$WeatherCopyWithImpl<$Res, Weather>;
  @useResult
  $Res call({CurrentWeatherResponse current});

  $CurrentWeatherResponseCopyWith<$Res> get current;
}

/// @nodoc
class _$WeatherCopyWithImpl<$Res, $Val extends Weather>
    implements $WeatherCopyWith<$Res> {
  _$WeatherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current = null,
  }) {
    return _then(_value.copyWith(
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as CurrentWeatherResponse,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CurrentWeatherResponseCopyWith<$Res> get current {
    return $CurrentWeatherResponseCopyWith<$Res>(_value.current, (value) {
      return _then(_value.copyWith(current: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WeatherImplCopyWith<$Res> implements $WeatherCopyWith<$Res> {
  factory _$$WeatherImplCopyWith(
          _$WeatherImpl value, $Res Function(_$WeatherImpl) then) =
      __$$WeatherImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CurrentWeatherResponse current});

  @override
  $CurrentWeatherResponseCopyWith<$Res> get current;
}

/// @nodoc
class __$$WeatherImplCopyWithImpl<$Res>
    extends _$WeatherCopyWithImpl<$Res, _$WeatherImpl>
    implements _$$WeatherImplCopyWith<$Res> {
  __$$WeatherImplCopyWithImpl(
      _$WeatherImpl _value, $Res Function(_$WeatherImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current = null,
  }) {
    return _then(_$WeatherImpl(
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as CurrentWeatherResponse,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$WeatherImpl implements _Weather {
  _$WeatherImpl({required this.current});

  factory _$WeatherImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherImplFromJson(json);

  @override
  final CurrentWeatherResponse current;

  @override
  String toString() {
    return 'Weather(current: $current)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherImpl &&
            (identical(other.current, current) || other.current == current));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, current);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherImplCopyWith<_$WeatherImpl> get copyWith =>
      __$$WeatherImplCopyWithImpl<_$WeatherImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherImplToJson(
      this,
    );
  }
}

abstract class _Weather implements Weather {
  factory _Weather({required final CurrentWeatherResponse current}) =
      _$WeatherImpl;

  factory _Weather.fromJson(Map<String, dynamic> json) = _$WeatherImpl.fromJson;

  @override
  CurrentWeatherResponse get current;
  @override
  @JsonKey(ignore: true)
  _$$WeatherImplCopyWith<_$WeatherImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CurrentWeatherResponse _$CurrentWeatherResponseFromJson(
    Map<String, dynamic> json) {
  return _CurrentWeatherResponse.fromJson(json);
}

/// @nodoc
mixin _$CurrentWeatherResponse {
  @JsonKey(name: 'temp_c')
  double get tempC => throw _privateConstructorUsedError;
  Condition get condition => throw _privateConstructorUsedError;
  @JsonKey(name: 'wind_kph')
  double get windKph => throw _privateConstructorUsedError;
  @JsonKey(name: 'wind_dir')
  String get windDir => throw _privateConstructorUsedError;
  @JsonKey(name: 'pressure_mb')
  double get pressureMb => throw _privateConstructorUsedError;
  int get humidity => throw _privateConstructorUsedError;
  int get cloud => throw _privateConstructorUsedError;
  @JsonKey(name: 'feelslike_c')
  double get feelsLikeC => throw _privateConstructorUsedError;
  @JsonKey(name: 'vis_km')
  double get visKm => throw _privateConstructorUsedError;
  double get uv => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrentWeatherResponseCopyWith<CurrentWeatherResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentWeatherResponseCopyWith<$Res> {
  factory $CurrentWeatherResponseCopyWith(CurrentWeatherResponse value,
          $Res Function(CurrentWeatherResponse) then) =
      _$CurrentWeatherResponseCopyWithImpl<$Res, CurrentWeatherResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'temp_c') double tempC,
      Condition condition,
      @JsonKey(name: 'wind_kph') double windKph,
      @JsonKey(name: 'wind_dir') String windDir,
      @JsonKey(name: 'pressure_mb') double pressureMb,
      int humidity,
      int cloud,
      @JsonKey(name: 'feelslike_c') double feelsLikeC,
      @JsonKey(name: 'vis_km') double visKm,
      double uv});

  $ConditionCopyWith<$Res> get condition;
}

/// @nodoc
class _$CurrentWeatherResponseCopyWithImpl<$Res,
        $Val extends CurrentWeatherResponse>
    implements $CurrentWeatherResponseCopyWith<$Res> {
  _$CurrentWeatherResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tempC = null,
    Object? condition = null,
    Object? windKph = null,
    Object? windDir = null,
    Object? pressureMb = null,
    Object? humidity = null,
    Object? cloud = null,
    Object? feelsLikeC = null,
    Object? visKm = null,
    Object? uv = null,
  }) {
    return _then(_value.copyWith(
      tempC: null == tempC
          ? _value.tempC
          : tempC // ignore: cast_nullable_to_non_nullable
              as double,
      condition: null == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as Condition,
      windKph: null == windKph
          ? _value.windKph
          : windKph // ignore: cast_nullable_to_non_nullable
              as double,
      windDir: null == windDir
          ? _value.windDir
          : windDir // ignore: cast_nullable_to_non_nullable
              as String,
      pressureMb: null == pressureMb
          ? _value.pressureMb
          : pressureMb // ignore: cast_nullable_to_non_nullable
              as double,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int,
      cloud: null == cloud
          ? _value.cloud
          : cloud // ignore: cast_nullable_to_non_nullable
              as int,
      feelsLikeC: null == feelsLikeC
          ? _value.feelsLikeC
          : feelsLikeC // ignore: cast_nullable_to_non_nullable
              as double,
      visKm: null == visKm
          ? _value.visKm
          : visKm // ignore: cast_nullable_to_non_nullable
              as double,
      uv: null == uv
          ? _value.uv
          : uv // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ConditionCopyWith<$Res> get condition {
    return $ConditionCopyWith<$Res>(_value.condition, (value) {
      return _then(_value.copyWith(condition: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CurrentWeatherResponseImplCopyWith<$Res>
    implements $CurrentWeatherResponseCopyWith<$Res> {
  factory _$$CurrentWeatherResponseImplCopyWith(
          _$CurrentWeatherResponseImpl value,
          $Res Function(_$CurrentWeatherResponseImpl) then) =
      __$$CurrentWeatherResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'temp_c') double tempC,
      Condition condition,
      @JsonKey(name: 'wind_kph') double windKph,
      @JsonKey(name: 'wind_dir') String windDir,
      @JsonKey(name: 'pressure_mb') double pressureMb,
      int humidity,
      int cloud,
      @JsonKey(name: 'feelslike_c') double feelsLikeC,
      @JsonKey(name: 'vis_km') double visKm,
      double uv});

  @override
  $ConditionCopyWith<$Res> get condition;
}

/// @nodoc
class __$$CurrentWeatherResponseImplCopyWithImpl<$Res>
    extends _$CurrentWeatherResponseCopyWithImpl<$Res,
        _$CurrentWeatherResponseImpl>
    implements _$$CurrentWeatherResponseImplCopyWith<$Res> {
  __$$CurrentWeatherResponseImplCopyWithImpl(
      _$CurrentWeatherResponseImpl _value,
      $Res Function(_$CurrentWeatherResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tempC = null,
    Object? condition = null,
    Object? windKph = null,
    Object? windDir = null,
    Object? pressureMb = null,
    Object? humidity = null,
    Object? cloud = null,
    Object? feelsLikeC = null,
    Object? visKm = null,
    Object? uv = null,
  }) {
    return _then(_$CurrentWeatherResponseImpl(
      tempC: null == tempC
          ? _value.tempC
          : tempC // ignore: cast_nullable_to_non_nullable
              as double,
      condition: null == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as Condition,
      windKph: null == windKph
          ? _value.windKph
          : windKph // ignore: cast_nullable_to_non_nullable
              as double,
      windDir: null == windDir
          ? _value.windDir
          : windDir // ignore: cast_nullable_to_non_nullable
              as String,
      pressureMb: null == pressureMb
          ? _value.pressureMb
          : pressureMb // ignore: cast_nullable_to_non_nullable
              as double,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int,
      cloud: null == cloud
          ? _value.cloud
          : cloud // ignore: cast_nullable_to_non_nullable
              as int,
      feelsLikeC: null == feelsLikeC
          ? _value.feelsLikeC
          : feelsLikeC // ignore: cast_nullable_to_non_nullable
              as double,
      visKm: null == visKm
          ? _value.visKm
          : visKm // ignore: cast_nullable_to_non_nullable
              as double,
      uv: null == uv
          ? _value.uv
          : uv // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CurrentWeatherResponseImpl implements _CurrentWeatherResponse {
  _$CurrentWeatherResponseImpl(
      {@JsonKey(name: 'temp_c') required this.tempC,
      required this.condition,
      @JsonKey(name: 'wind_kph') required this.windKph,
      @JsonKey(name: 'wind_dir') required this.windDir,
      @JsonKey(name: 'pressure_mb') required this.pressureMb,
      required this.humidity,
      required this.cloud,
      @JsonKey(name: 'feelslike_c') required this.feelsLikeC,
      @JsonKey(name: 'vis_km') required this.visKm,
      required this.uv});

  factory _$CurrentWeatherResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CurrentWeatherResponseImplFromJson(json);

  @override
  @JsonKey(name: 'temp_c')
  final double tempC;
  @override
  final Condition condition;
  @override
  @JsonKey(name: 'wind_kph')
  final double windKph;
  @override
  @JsonKey(name: 'wind_dir')
  final String windDir;
  @override
  @JsonKey(name: 'pressure_mb')
  final double pressureMb;
  @override
  final int humidity;
  @override
  final int cloud;
  @override
  @JsonKey(name: 'feelslike_c')
  final double feelsLikeC;
  @override
  @JsonKey(name: 'vis_km')
  final double visKm;
  @override
  final double uv;

  @override
  String toString() {
    return 'CurrentWeatherResponse(tempC: $tempC, condition: $condition, windKph: $windKph, windDir: $windDir, pressureMb: $pressureMb, humidity: $humidity, cloud: $cloud, feelsLikeC: $feelsLikeC, visKm: $visKm, uv: $uv)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentWeatherResponseImpl &&
            (identical(other.tempC, tempC) || other.tempC == tempC) &&
            (identical(other.condition, condition) ||
                other.condition == condition) &&
            (identical(other.windKph, windKph) || other.windKph == windKph) &&
            (identical(other.windDir, windDir) || other.windDir == windDir) &&
            (identical(other.pressureMb, pressureMb) ||
                other.pressureMb == pressureMb) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity) &&
            (identical(other.cloud, cloud) || other.cloud == cloud) &&
            (identical(other.feelsLikeC, feelsLikeC) ||
                other.feelsLikeC == feelsLikeC) &&
            (identical(other.visKm, visKm) || other.visKm == visKm) &&
            (identical(other.uv, uv) || other.uv == uv));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, tempC, condition, windKph,
      windDir, pressureMb, humidity, cloud, feelsLikeC, visKm, uv);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentWeatherResponseImplCopyWith<_$CurrentWeatherResponseImpl>
      get copyWith => __$$CurrentWeatherResponseImplCopyWithImpl<
          _$CurrentWeatherResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CurrentWeatherResponseImplToJson(
      this,
    );
  }
}

abstract class _CurrentWeatherResponse implements CurrentWeatherResponse {
  factory _CurrentWeatherResponse(
      {@JsonKey(name: 'temp_c') required final double tempC,
      required final Condition condition,
      @JsonKey(name: 'wind_kph') required final double windKph,
      @JsonKey(name: 'wind_dir') required final String windDir,
      @JsonKey(name: 'pressure_mb') required final double pressureMb,
      required final int humidity,
      required final int cloud,
      @JsonKey(name: 'feelslike_c') required final double feelsLikeC,
      @JsonKey(name: 'vis_km') required final double visKm,
      required final double uv}) = _$CurrentWeatherResponseImpl;

  factory _CurrentWeatherResponse.fromJson(Map<String, dynamic> json) =
      _$CurrentWeatherResponseImpl.fromJson;

  @override
  @JsonKey(name: 'temp_c')
  double get tempC;
  @override
  Condition get condition;
  @override
  @JsonKey(name: 'wind_kph')
  double get windKph;
  @override
  @JsonKey(name: 'wind_dir')
  String get windDir;
  @override
  @JsonKey(name: 'pressure_mb')
  double get pressureMb;
  @override
  int get humidity;
  @override
  int get cloud;
  @override
  @JsonKey(name: 'feelslike_c')
  double get feelsLikeC;
  @override
  @JsonKey(name: 'vis_km')
  double get visKm;
  @override
  double get uv;
  @override
  @JsonKey(ignore: true)
  _$$CurrentWeatherResponseImplCopyWith<_$CurrentWeatherResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Condition _$ConditionFromJson(Map<String, dynamic> json) {
  return _Condition.fromJson(json);
}

/// @nodoc
mixin _$Condition {
  String get text => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;
  int get code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConditionCopyWith<Condition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConditionCopyWith<$Res> {
  factory $ConditionCopyWith(Condition value, $Res Function(Condition) then) =
      _$ConditionCopyWithImpl<$Res, Condition>;
  @useResult
  $Res call({String text, String icon, int code});
}

/// @nodoc
class _$ConditionCopyWithImpl<$Res, $Val extends Condition>
    implements $ConditionCopyWith<$Res> {
  _$ConditionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? icon = null,
    Object? code = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConditionImplCopyWith<$Res>
    implements $ConditionCopyWith<$Res> {
  factory _$$ConditionImplCopyWith(
          _$ConditionImpl value, $Res Function(_$ConditionImpl) then) =
      __$$ConditionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String text, String icon, int code});
}

/// @nodoc
class __$$ConditionImplCopyWithImpl<$Res>
    extends _$ConditionCopyWithImpl<$Res, _$ConditionImpl>
    implements _$$ConditionImplCopyWith<$Res> {
  __$$ConditionImplCopyWithImpl(
      _$ConditionImpl _value, $Res Function(_$ConditionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? icon = null,
    Object? code = null,
  }) {
    return _then(_$ConditionImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConditionImpl implements _Condition {
  _$ConditionImpl({required this.text, required this.icon, required this.code});

  factory _$ConditionImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConditionImplFromJson(json);

  @override
  final String text;
  @override
  final String icon;
  @override
  final int code;

  @override
  String toString() {
    return 'Condition(text: $text, icon: $icon, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConditionImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, text, icon, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConditionImplCopyWith<_$ConditionImpl> get copyWith =>
      __$$ConditionImplCopyWithImpl<_$ConditionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConditionImplToJson(
      this,
    );
  }
}

abstract class _Condition implements Condition {
  factory _Condition(
      {required final String text,
      required final String icon,
      required final int code}) = _$ConditionImpl;

  factory _Condition.fromJson(Map<String, dynamic> json) =
      _$ConditionImpl.fromJson;

  @override
  String get text;
  @override
  String get icon;
  @override
  int get code;
  @override
  @JsonKey(ignore: true)
  _$$ConditionImplCopyWith<_$ConditionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
