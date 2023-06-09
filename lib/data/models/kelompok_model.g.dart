// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kelompok_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Kelompok _$$_KelompokFromJson(Map<String, dynamic> json) => _$_Kelompok(
      id: json['id'] ?? 0,
      name: json['name'] as String? ?? '',
      topik: json['topik'] as String? ?? '',
      prodi: json['prodi'] as String? ?? '',
      angkatan: json['angkatan'] as String? ?? '',
      pembimbing: json['pembimbing'] == null
          ? null
          : Dosen.fromJson(json['pembimbing'] as Map<String, dynamic>),
      krs: json['krs'] == null
          ? null
          : KRS.fromJson(json['krs'] as Map<String, dynamic>),
      mahasiswa: (json['mahasiswa'] as List<dynamic>?)
          ?.map((e) => Mahasiswa.fromJson(e as Map<String, dynamic>))
          .toList(),
      requests: (json['requests'] as List<dynamic>?)
          ?.map((e) => Request.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_KelompokToJson(_$_Kelompok instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'topik': instance.topik,
      'prodi': instance.prodi,
      'angkatan': instance.angkatan,
      'pembimbing': instance.pembimbing,
      'krs': instance.krs,
      'mahasiswa': instance.mahasiswa,
      'requests': instance.requests,
    };
