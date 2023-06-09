// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mahasiswa_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Mahasiswa _$$_MahasiswaFromJson(Map<String, dynamic> json) => _$_Mahasiswa(
      nim: json['nim'] as String? ?? '',
      angkatan: json['angkatan'] as String? ?? '',
      prodi: json['prodi'] as String? ?? '',
      nama: json['nama'] as String? ?? '',
      role: json['role'] as String? ?? '',
      kelompok: json['kelompok'] == null
          ? null
          : Kelompok.fromJson(json['kelompok'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MahasiswaToJson(_$_Mahasiswa instance) =>
    <String, dynamic>{
      'nim': instance.nim,
      'angkatan': instance.angkatan,
      'prodi': instance.prodi,
      'nama': instance.nama,
      'role': instance.role,
      'kelompok': instance.kelompok,
    };
