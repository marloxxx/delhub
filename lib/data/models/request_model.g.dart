// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Request _$$_RequestFromJson(Map<String, dynamic> json) => _$_Request(
      id: json['id'] as int? ?? 0,
      description: json['description'] as String? ?? '',
      waktu: json['waktu'] == null
          ? null
          : DateTime.parse(json['waktu'] as String),
      status: json['status'] as String? ?? '',
      is_done: json['is_done'] as bool? ?? false,
      file: json['file'] as String? ?? '',
      kelompok: json['kelompok'] == null
          ? null
          : Kelompok.fromJson(json['kelompok'] as Map<String, dynamic>),
      ruangan: json['ruangan'] == null
          ? null
          : Room.fromJson(json['ruangan'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_RequestToJson(_$_Request instance) =>
    <String, dynamic>{
      'id': instance.id,
      'description': instance.description,
      'waktu': instance.waktu?.toIso8601String(),
      'status': instance.status,
      'is_done': instance.is_done,
      'file': instance.file,
      'kelompok': instance.kelompok,
      'ruangan': instance.ruangan,
    };
