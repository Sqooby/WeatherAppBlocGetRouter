// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'place_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Place _$PlaceFromJson(Map<String, dynamic> json) {
  return _Place.fromJson(json);
}

/// @nodoc
mixin _$Place {
  String get placeId => throw _privateConstructorUsedError;
  String get mainText => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaceCopyWith<Place> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceCopyWith<$Res> {
  factory $PlaceCopyWith(Place value, $Res Function(Place) then) =
      _$PlaceCopyWithImpl<$Res, Place>;
  @useResult
  $Res call({String placeId, String mainText});
}

/// @nodoc
class _$PlaceCopyWithImpl<$Res, $Val extends Place>
    implements $PlaceCopyWith<$Res> {
  _$PlaceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? placeId = null,
    Object? mainText = null,
  }) {
    return _then(_value.copyWith(
      placeId: null == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String,
      mainText: null == mainText
          ? _value.mainText
          : mainText // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlaceImplCopyWith<$Res> implements $PlaceCopyWith<$Res> {
  factory _$$PlaceImplCopyWith(
          _$PlaceImpl value, $Res Function(_$PlaceImpl) then) =
      __$$PlaceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String placeId, String mainText});
}

/// @nodoc
class __$$PlaceImplCopyWithImpl<$Res>
    extends _$PlaceCopyWithImpl<$Res, _$PlaceImpl>
    implements _$$PlaceImplCopyWith<$Res> {
  __$$PlaceImplCopyWithImpl(
      _$PlaceImpl _value, $Res Function(_$PlaceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? placeId = null,
    Object? mainText = null,
  }) {
    return _then(_$PlaceImpl(
      placeId: null == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String,
      mainText: null == mainText
          ? _value.mainText
          : mainText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlaceImpl implements _Place {
  _$PlaceImpl({required this.placeId, required this.mainText});

  factory _$PlaceImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlaceImplFromJson(json);

  @override
  final String placeId;
  @override
  final String mainText;

  @override
  String toString() {
    return 'Place(placeId: $placeId, mainText: $mainText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaceImpl &&
            (identical(other.placeId, placeId) || other.placeId == placeId) &&
            (identical(other.mainText, mainText) ||
                other.mainText == mainText));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, placeId, mainText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaceImplCopyWith<_$PlaceImpl> get copyWith =>
      __$$PlaceImplCopyWithImpl<_$PlaceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlaceImplToJson(
      this,
    );
  }
}

abstract class _Place implements Place {
  factory _Place(
      {required final String placeId,
      required final String mainText}) = _$PlaceImpl;

  factory _Place.fromJson(Map<String, dynamic> json) = _$PlaceImpl.fromJson;

  @override
  String get placeId;
  @override
  String get mainText;
  @override
  @JsonKey(ignore: true)
  _$$PlaceImplCopyWith<_$PlaceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PlaceResponse {
  List<Place> get predictions => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlaceResponseCopyWith<PlaceResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceResponseCopyWith<$Res> {
  factory $PlaceResponseCopyWith(
          PlaceResponse value, $Res Function(PlaceResponse) then) =
      _$PlaceResponseCopyWithImpl<$Res, PlaceResponse>;
  @useResult
  $Res call({List<Place> predictions});
}

/// @nodoc
class _$PlaceResponseCopyWithImpl<$Res, $Val extends PlaceResponse>
    implements $PlaceResponseCopyWith<$Res> {
  _$PlaceResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? predictions = null,
  }) {
    return _then(_value.copyWith(
      predictions: null == predictions
          ? _value.predictions
          : predictions // ignore: cast_nullable_to_non_nullable
              as List<Place>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlaceResponseImplCopyWith<$Res>
    implements $PlaceResponseCopyWith<$Res> {
  factory _$$PlaceResponseImplCopyWith(
          _$PlaceResponseImpl value, $Res Function(_$PlaceResponseImpl) then) =
      __$$PlaceResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Place> predictions});
}

/// @nodoc
class __$$PlaceResponseImplCopyWithImpl<$Res>
    extends _$PlaceResponseCopyWithImpl<$Res, _$PlaceResponseImpl>
    implements _$$PlaceResponseImplCopyWith<$Res> {
  __$$PlaceResponseImplCopyWithImpl(
      _$PlaceResponseImpl _value, $Res Function(_$PlaceResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? predictions = null,
  }) {
    return _then(_$PlaceResponseImpl(
      predictions: null == predictions
          ? _value._predictions
          : predictions // ignore: cast_nullable_to_non_nullable
              as List<Place>,
    ));
  }
}

/// @nodoc

class _$PlaceResponseImpl implements _PlaceResponse {
  _$PlaceResponseImpl({required final List<Place> predictions})
      : _predictions = predictions;

  final List<Place> _predictions;
  @override
  List<Place> get predictions {
    if (_predictions is EqualUnmodifiableListView) return _predictions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_predictions);
  }

  @override
  String toString() {
    return 'PlaceResponse(predictions: $predictions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaceResponseImpl &&
            const DeepCollectionEquality()
                .equals(other._predictions, _predictions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_predictions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaceResponseImplCopyWith<_$PlaceResponseImpl> get copyWith =>
      __$$PlaceResponseImplCopyWithImpl<_$PlaceResponseImpl>(this, _$identity);
}

abstract class _PlaceResponse implements PlaceResponse {
  factory _PlaceResponse({required final List<Place> predictions}) =
      _$PlaceResponseImpl;

  @override
  List<Place> get predictions;
  @override
  @JsonKey(ignore: true)
  _$$PlaceResponseImplCopyWith<_$PlaceResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PlaceDetails {
  double get lat => throw _privateConstructorUsedError;
  double get lng => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlaceDetailsCopyWith<PlaceDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceDetailsCopyWith<$Res> {
  factory $PlaceDetailsCopyWith(
          PlaceDetails value, $Res Function(PlaceDetails) then) =
      _$PlaceDetailsCopyWithImpl<$Res, PlaceDetails>;
  @useResult
  $Res call({double lat, double lng});
}

/// @nodoc
class _$PlaceDetailsCopyWithImpl<$Res, $Val extends PlaceDetails>
    implements $PlaceDetailsCopyWith<$Res> {
  _$PlaceDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lng = null,
  }) {
    return _then(_value.copyWith(
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlaceDetailsImplCopyWith<$Res>
    implements $PlaceDetailsCopyWith<$Res> {
  factory _$$PlaceDetailsImplCopyWith(
          _$PlaceDetailsImpl value, $Res Function(_$PlaceDetailsImpl) then) =
      __$$PlaceDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double lat, double lng});
}

/// @nodoc
class __$$PlaceDetailsImplCopyWithImpl<$Res>
    extends _$PlaceDetailsCopyWithImpl<$Res, _$PlaceDetailsImpl>
    implements _$$PlaceDetailsImplCopyWith<$Res> {
  __$$PlaceDetailsImplCopyWithImpl(
      _$PlaceDetailsImpl _value, $Res Function(_$PlaceDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lng = null,
  }) {
    return _then(_$PlaceDetailsImpl(
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$PlaceDetailsImpl implements _PlaceDetails {
  _$PlaceDetailsImpl({required this.lat, required this.lng});

  @override
  final double lat;
  @override
  final double lng;

  @override
  String toString() {
    return 'PlaceDetails(lat: $lat, lng: $lng)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaceDetailsImpl &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lat, lng);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaceDetailsImplCopyWith<_$PlaceDetailsImpl> get copyWith =>
      __$$PlaceDetailsImplCopyWithImpl<_$PlaceDetailsImpl>(this, _$identity);
}

abstract class _PlaceDetails implements PlaceDetails {
  factory _PlaceDetails(
      {required final double lat,
      required final double lng}) = _$PlaceDetailsImpl;

  @override
  double get lat;
  @override
  double get lng;
  @override
  @JsonKey(ignore: true)
  _$$PlaceDetailsImplCopyWith<_$PlaceDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
