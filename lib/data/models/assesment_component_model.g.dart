// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assesment_component_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AssesmentComponent _$$_AssesmentComponentFromJson(
        Map<String, dynamic> json) =>
    _$_AssesmentComponent(
      id: json['id'] as int,
      name: json['name'] as String? ?? '',
      weight: json['weight'] as int? ?? 0,
    );

Map<String, dynamic> _$$_AssesmentComponentToJson(
        _$_AssesmentComponent instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'weight': instance.weight,
    };
