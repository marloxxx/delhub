// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assessment_point_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AssessmentPoint _$$_AssessmentPointFromJson(Map<String, dynamic> json) =>
    _$_AssessmentPoint(
      id: json['id'] as int,
      name: json['name'] as String? ?? '',
      weight: json['weight'] as int? ?? 0,
      components: (json['components'] as List<dynamic>?)
          ?.map((e) => AssessmentComponent.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_AssessmentPointToJson(_$_AssessmentPoint instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'weight': instance.weight,
      'components': instance.components,
    };
