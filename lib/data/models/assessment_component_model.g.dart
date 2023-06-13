// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assessment_component_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AssessmentComponent _$$_AssessmentComponentFromJson(
        Map<String, dynamic> json) =>
    _$_AssessmentComponent(
      id: json['id'] as int,
      name: json['name'] as String? ?? '',
      weight: json['weight'] as int? ?? 0,
    );

Map<String, dynamic> _$$_AssessmentComponentToJson(
        _$_AssessmentComponent instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'weight': instance.weight,
    };
