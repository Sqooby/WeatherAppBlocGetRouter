// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlaceImpl _$$PlaceImplFromJson(Map<String, dynamic> json) => _$PlaceImpl(
      placeId: json['place_id'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$$PlaceImplToJson(_$PlaceImpl instance) =>
    <String, dynamic>{
      'place_id': instance.placeId,
      'description': instance.description,
    };

_$PlaceResponseImpl _$$PlaceResponseImplFromJson(Map<String, dynamic> json) =>
    _$PlaceResponseImpl(
      predictions: (json['predictions'] as List<dynamic>)
          .map((e) => Place.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PlaceResponseImplToJson(_$PlaceResponseImpl instance) =>
    <String, dynamic>{
      'predictions': instance.predictions,
    };
