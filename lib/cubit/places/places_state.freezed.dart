// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'places_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PlaceState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Place> places) loaded,
    required TResult Function(String message) error,
    required TResult Function(List<Place> favPlaces) favoritesLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Place> places)? loaded,
    TResult? Function(String message)? error,
    TResult? Function(List<Place> favPlaces)? favoritesLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Place> places)? loaded,
    TResult Function(String message)? error,
    TResult Function(List<Place> favPlaces)? favoritesLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlaceInitial value) initial,
    required TResult Function(PlaceLoading value) loading,
    required TResult Function(PlaceLoaded value) loaded,
    required TResult Function(PlaceError value) error,
    required TResult Function(PlaceFavoritesLoaded value) favoritesLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlaceInitial value)? initial,
    TResult? Function(PlaceLoading value)? loading,
    TResult? Function(PlaceLoaded value)? loaded,
    TResult? Function(PlaceError value)? error,
    TResult? Function(PlaceFavoritesLoaded value)? favoritesLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlaceInitial value)? initial,
    TResult Function(PlaceLoading value)? loading,
    TResult Function(PlaceLoaded value)? loaded,
    TResult Function(PlaceError value)? error,
    TResult Function(PlaceFavoritesLoaded value)? favoritesLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceStateCopyWith<$Res> {
  factory $PlaceStateCopyWith(
          PlaceState value, $Res Function(PlaceState) then) =
      _$PlaceStateCopyWithImpl<$Res, PlaceState>;
}

/// @nodoc
class _$PlaceStateCopyWithImpl<$Res, $Val extends PlaceState>
    implements $PlaceStateCopyWith<$Res> {
  _$PlaceStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PlaceInitialImplCopyWith<$Res> {
  factory _$$PlaceInitialImplCopyWith(
          _$PlaceInitialImpl value, $Res Function(_$PlaceInitialImpl) then) =
      __$$PlaceInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PlaceInitialImplCopyWithImpl<$Res>
    extends _$PlaceStateCopyWithImpl<$Res, _$PlaceInitialImpl>
    implements _$$PlaceInitialImplCopyWith<$Res> {
  __$$PlaceInitialImplCopyWithImpl(
      _$PlaceInitialImpl _value, $Res Function(_$PlaceInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PlaceInitialImpl with DiagnosticableTreeMixin implements PlaceInitial {
  const _$PlaceInitialImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlaceState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'PlaceState.initial'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PlaceInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Place> places) loaded,
    required TResult Function(String message) error,
    required TResult Function(List<Place> favPlaces) favoritesLoaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Place> places)? loaded,
    TResult? Function(String message)? error,
    TResult? Function(List<Place> favPlaces)? favoritesLoaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Place> places)? loaded,
    TResult Function(String message)? error,
    TResult Function(List<Place> favPlaces)? favoritesLoaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlaceInitial value) initial,
    required TResult Function(PlaceLoading value) loading,
    required TResult Function(PlaceLoaded value) loaded,
    required TResult Function(PlaceError value) error,
    required TResult Function(PlaceFavoritesLoaded value) favoritesLoaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlaceInitial value)? initial,
    TResult? Function(PlaceLoading value)? loading,
    TResult? Function(PlaceLoaded value)? loaded,
    TResult? Function(PlaceError value)? error,
    TResult? Function(PlaceFavoritesLoaded value)? favoritesLoaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlaceInitial value)? initial,
    TResult Function(PlaceLoading value)? loading,
    TResult Function(PlaceLoaded value)? loaded,
    TResult Function(PlaceError value)? error,
    TResult Function(PlaceFavoritesLoaded value)? favoritesLoaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class PlaceInitial implements PlaceState {
  const factory PlaceInitial() = _$PlaceInitialImpl;
}

/// @nodoc
abstract class _$$PlaceLoadingImplCopyWith<$Res> {
  factory _$$PlaceLoadingImplCopyWith(
          _$PlaceLoadingImpl value, $Res Function(_$PlaceLoadingImpl) then) =
      __$$PlaceLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PlaceLoadingImplCopyWithImpl<$Res>
    extends _$PlaceStateCopyWithImpl<$Res, _$PlaceLoadingImpl>
    implements _$$PlaceLoadingImplCopyWith<$Res> {
  __$$PlaceLoadingImplCopyWithImpl(
      _$PlaceLoadingImpl _value, $Res Function(_$PlaceLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PlaceLoadingImpl with DiagnosticableTreeMixin implements PlaceLoading {
  const _$PlaceLoadingImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlaceState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'PlaceState.loading'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PlaceLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Place> places) loaded,
    required TResult Function(String message) error,
    required TResult Function(List<Place> favPlaces) favoritesLoaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Place> places)? loaded,
    TResult? Function(String message)? error,
    TResult? Function(List<Place> favPlaces)? favoritesLoaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Place> places)? loaded,
    TResult Function(String message)? error,
    TResult Function(List<Place> favPlaces)? favoritesLoaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlaceInitial value) initial,
    required TResult Function(PlaceLoading value) loading,
    required TResult Function(PlaceLoaded value) loaded,
    required TResult Function(PlaceError value) error,
    required TResult Function(PlaceFavoritesLoaded value) favoritesLoaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlaceInitial value)? initial,
    TResult? Function(PlaceLoading value)? loading,
    TResult? Function(PlaceLoaded value)? loaded,
    TResult? Function(PlaceError value)? error,
    TResult? Function(PlaceFavoritesLoaded value)? favoritesLoaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlaceInitial value)? initial,
    TResult Function(PlaceLoading value)? loading,
    TResult Function(PlaceLoaded value)? loaded,
    TResult Function(PlaceError value)? error,
    TResult Function(PlaceFavoritesLoaded value)? favoritesLoaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class PlaceLoading implements PlaceState {
  const factory PlaceLoading() = _$PlaceLoadingImpl;
}

/// @nodoc
abstract class _$$PlaceLoadedImplCopyWith<$Res> {
  factory _$$PlaceLoadedImplCopyWith(
          _$PlaceLoadedImpl value, $Res Function(_$PlaceLoadedImpl) then) =
      __$$PlaceLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Place> places});
}

/// @nodoc
class __$$PlaceLoadedImplCopyWithImpl<$Res>
    extends _$PlaceStateCopyWithImpl<$Res, _$PlaceLoadedImpl>
    implements _$$PlaceLoadedImplCopyWith<$Res> {
  __$$PlaceLoadedImplCopyWithImpl(
      _$PlaceLoadedImpl _value, $Res Function(_$PlaceLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? places = null,
  }) {
    return _then(_$PlaceLoadedImpl(
      null == places
          ? _value._places
          : places // ignore: cast_nullable_to_non_nullable
              as List<Place>,
    ));
  }
}

/// @nodoc

class _$PlaceLoadedImpl with DiagnosticableTreeMixin implements PlaceLoaded {
  const _$PlaceLoadedImpl(final List<Place> places) : _places = places;

  final List<Place> _places;
  @override
  List<Place> get places {
    if (_places is EqualUnmodifiableListView) return _places;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_places);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlaceState.loaded(places: $places)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PlaceState.loaded'))
      ..add(DiagnosticsProperty('places', places));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaceLoadedImpl &&
            const DeepCollectionEquality().equals(other._places, _places));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_places));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaceLoadedImplCopyWith<_$PlaceLoadedImpl> get copyWith =>
      __$$PlaceLoadedImplCopyWithImpl<_$PlaceLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Place> places) loaded,
    required TResult Function(String message) error,
    required TResult Function(List<Place> favPlaces) favoritesLoaded,
  }) {
    return loaded(places);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Place> places)? loaded,
    TResult? Function(String message)? error,
    TResult? Function(List<Place> favPlaces)? favoritesLoaded,
  }) {
    return loaded?.call(places);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Place> places)? loaded,
    TResult Function(String message)? error,
    TResult Function(List<Place> favPlaces)? favoritesLoaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(places);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlaceInitial value) initial,
    required TResult Function(PlaceLoading value) loading,
    required TResult Function(PlaceLoaded value) loaded,
    required TResult Function(PlaceError value) error,
    required TResult Function(PlaceFavoritesLoaded value) favoritesLoaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlaceInitial value)? initial,
    TResult? Function(PlaceLoading value)? loading,
    TResult? Function(PlaceLoaded value)? loaded,
    TResult? Function(PlaceError value)? error,
    TResult? Function(PlaceFavoritesLoaded value)? favoritesLoaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlaceInitial value)? initial,
    TResult Function(PlaceLoading value)? loading,
    TResult Function(PlaceLoaded value)? loaded,
    TResult Function(PlaceError value)? error,
    TResult Function(PlaceFavoritesLoaded value)? favoritesLoaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class PlaceLoaded implements PlaceState {
  const factory PlaceLoaded(final List<Place> places) = _$PlaceLoadedImpl;

  List<Place> get places;
  @JsonKey(ignore: true)
  _$$PlaceLoadedImplCopyWith<_$PlaceLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PlaceErrorImplCopyWith<$Res> {
  factory _$$PlaceErrorImplCopyWith(
          _$PlaceErrorImpl value, $Res Function(_$PlaceErrorImpl) then) =
      __$$PlaceErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$PlaceErrorImplCopyWithImpl<$Res>
    extends _$PlaceStateCopyWithImpl<$Res, _$PlaceErrorImpl>
    implements _$$PlaceErrorImplCopyWith<$Res> {
  __$$PlaceErrorImplCopyWithImpl(
      _$PlaceErrorImpl _value, $Res Function(_$PlaceErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$PlaceErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PlaceErrorImpl with DiagnosticableTreeMixin implements PlaceError {
  const _$PlaceErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlaceState.error(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PlaceState.error'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaceErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaceErrorImplCopyWith<_$PlaceErrorImpl> get copyWith =>
      __$$PlaceErrorImplCopyWithImpl<_$PlaceErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Place> places) loaded,
    required TResult Function(String message) error,
    required TResult Function(List<Place> favPlaces) favoritesLoaded,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Place> places)? loaded,
    TResult? Function(String message)? error,
    TResult? Function(List<Place> favPlaces)? favoritesLoaded,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Place> places)? loaded,
    TResult Function(String message)? error,
    TResult Function(List<Place> favPlaces)? favoritesLoaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlaceInitial value) initial,
    required TResult Function(PlaceLoading value) loading,
    required TResult Function(PlaceLoaded value) loaded,
    required TResult Function(PlaceError value) error,
    required TResult Function(PlaceFavoritesLoaded value) favoritesLoaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlaceInitial value)? initial,
    TResult? Function(PlaceLoading value)? loading,
    TResult? Function(PlaceLoaded value)? loaded,
    TResult? Function(PlaceError value)? error,
    TResult? Function(PlaceFavoritesLoaded value)? favoritesLoaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlaceInitial value)? initial,
    TResult Function(PlaceLoading value)? loading,
    TResult Function(PlaceLoaded value)? loaded,
    TResult Function(PlaceError value)? error,
    TResult Function(PlaceFavoritesLoaded value)? favoritesLoaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class PlaceError implements PlaceState {
  const factory PlaceError(final String message) = _$PlaceErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$PlaceErrorImplCopyWith<_$PlaceErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PlaceFavoritesLoadedImplCopyWith<$Res> {
  factory _$$PlaceFavoritesLoadedImplCopyWith(_$PlaceFavoritesLoadedImpl value,
          $Res Function(_$PlaceFavoritesLoadedImpl) then) =
      __$$PlaceFavoritesLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Place> favPlaces});
}

/// @nodoc
class __$$PlaceFavoritesLoadedImplCopyWithImpl<$Res>
    extends _$PlaceStateCopyWithImpl<$Res, _$PlaceFavoritesLoadedImpl>
    implements _$$PlaceFavoritesLoadedImplCopyWith<$Res> {
  __$$PlaceFavoritesLoadedImplCopyWithImpl(_$PlaceFavoritesLoadedImpl _value,
      $Res Function(_$PlaceFavoritesLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favPlaces = null,
  }) {
    return _then(_$PlaceFavoritesLoadedImpl(
      null == favPlaces
          ? _value._favPlaces
          : favPlaces // ignore: cast_nullable_to_non_nullable
              as List<Place>,
    ));
  }
}

/// @nodoc

class _$PlaceFavoritesLoadedImpl
    with DiagnosticableTreeMixin
    implements PlaceFavoritesLoaded {
  const _$PlaceFavoritesLoadedImpl(final List<Place> favPlaces)
      : _favPlaces = favPlaces;

  final List<Place> _favPlaces;
  @override
  List<Place> get favPlaces {
    if (_favPlaces is EqualUnmodifiableListView) return _favPlaces;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favPlaces);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlaceState.favoritesLoaded(favPlaces: $favPlaces)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PlaceState.favoritesLoaded'))
      ..add(DiagnosticsProperty('favPlaces', favPlaces));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaceFavoritesLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._favPlaces, _favPlaces));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_favPlaces));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaceFavoritesLoadedImplCopyWith<_$PlaceFavoritesLoadedImpl>
      get copyWith =>
          __$$PlaceFavoritesLoadedImplCopyWithImpl<_$PlaceFavoritesLoadedImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Place> places) loaded,
    required TResult Function(String message) error,
    required TResult Function(List<Place> favPlaces) favoritesLoaded,
  }) {
    return favoritesLoaded(favPlaces);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Place> places)? loaded,
    TResult? Function(String message)? error,
    TResult? Function(List<Place> favPlaces)? favoritesLoaded,
  }) {
    return favoritesLoaded?.call(favPlaces);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Place> places)? loaded,
    TResult Function(String message)? error,
    TResult Function(List<Place> favPlaces)? favoritesLoaded,
    required TResult orElse(),
  }) {
    if (favoritesLoaded != null) {
      return favoritesLoaded(favPlaces);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlaceInitial value) initial,
    required TResult Function(PlaceLoading value) loading,
    required TResult Function(PlaceLoaded value) loaded,
    required TResult Function(PlaceError value) error,
    required TResult Function(PlaceFavoritesLoaded value) favoritesLoaded,
  }) {
    return favoritesLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlaceInitial value)? initial,
    TResult? Function(PlaceLoading value)? loading,
    TResult? Function(PlaceLoaded value)? loaded,
    TResult? Function(PlaceError value)? error,
    TResult? Function(PlaceFavoritesLoaded value)? favoritesLoaded,
  }) {
    return favoritesLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlaceInitial value)? initial,
    TResult Function(PlaceLoading value)? loading,
    TResult Function(PlaceLoaded value)? loaded,
    TResult Function(PlaceError value)? error,
    TResult Function(PlaceFavoritesLoaded value)? favoritesLoaded,
    required TResult orElse(),
  }) {
    if (favoritesLoaded != null) {
      return favoritesLoaded(this);
    }
    return orElse();
  }
}

abstract class PlaceFavoritesLoaded implements PlaceState {
  const factory PlaceFavoritesLoaded(final List<Place> favPlaces) =
      _$PlaceFavoritesLoadedImpl;

  List<Place> get favPlaces;
  @JsonKey(ignore: true)
  _$$PlaceFavoritesLoadedImplCopyWith<_$PlaceFavoritesLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
