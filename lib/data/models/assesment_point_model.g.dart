// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assesment_point_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AssesmentPoint _$$_AssesmentPointFromJson(Map<String, dynamic> json) =>
    _$_AssesmentPoint(
      id: json['id'] as int,
      krs: json['krs'] == null
          ? null
          : KRS.fromJson(json['krs'] as Map<String, dynamic>),
      name: json['name'] as String? ?? '',
      weight: json['weight'] as int? ?? 0,
    );

Map<String, dynamic> _$$_AssesmentPointToJson(_$_AssesmentPoint instance) =>
    <String, dynamic>{
      'id': instance.id,
      'krs': instance.krs,
      'name': instance.name,
      'weight': instance.weight,
    };
