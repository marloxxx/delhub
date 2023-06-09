// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: json['id'] as int? ?? 0,
      name: json['name'] as String? ?? '',
      email: json['email'] as String? ?? '',
      password: json['password'] as String? ?? '',
      token: json['token'] as String? ?? '',
      mahasiswa: json['mahasiswa'] == null
          ? null
          : Mahasiswa.fromJson(json['mahasiswa'] as Map<String, dynamic>),
      dosen: json['dosen'] == null
          ? null
          : Dosen.fromJson(json['dosen'] as Map<String, dynamic>),
      role: json['role'] as String? ?? '',
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'password': instance.password,
      'token': instance.token,
      'mahasiswa': instance.mahasiswa,
      'dosen': instance.dosen,
      'role': instance.role,
    };
