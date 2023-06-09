// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mahasiswa_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Mahasiswa _$MahasiswaFromJson(Map<String, dynamic> json) {
  return _Mahasiswa.fromJson(json);
}

/// @nodoc
mixin _$Mahasiswa {
  String get nim => throw _privateConstructorUsedError;
  String get angkatan => throw _privateConstructorUsedError;
  String get prodi => throw _privateConstructorUsedError;
  String get nama => throw _privateConstructorUsedError;
  String get role => throw _privateConstructorUsedError;
  Kelompok? get kelompok => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MahasiswaCopyWith<Mahasiswa> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MahasiswaCopyWith<$Res> {
  factory $MahasiswaCopyWith(Mahasiswa value, $Res Function(Mahasiswa) then) =
      _$MahasiswaCopyWithImpl<$Res, Mahasiswa>;
  @useResult
  $Res call(
      {String nim,
      String angkatan,
      String prodi,
      String nama,
      String role,
      Kelompok? kelompok});

  $KelompokCopyWith<$Res>? get kelompok;
}

/// @nodoc
class _$MahasiswaCopyWithImpl<$Res, $Val extends Mahasiswa>
    implements $MahasiswaCopyWith<$Res> {
  _$MahasiswaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nim = null,
    Object? angkatan = null,
    Object? prodi = null,
    Object? nama = null,
    Object? role = null,
    Object? kelompok = freezed,
  }) {
    return _then(_value.copyWith(
      nim: null == nim
          ? _value.nim
          : nim // ignore: cast_nullable_to_non_nullable
              as String,
      angkatan: null == angkatan
          ? _value.angkatan
          : angkatan // ignore: cast_nullable_to_non_nullable
              as String,
      prodi: null == prodi
          ? _value.prodi
          : prodi // ignore: cast_nullable_to_non_nullable
              as String,
      nama: null == nama
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      kelompok: freezed == kelompok
          ? _value.kelompok
          : kelompok // ignore: cast_nullable_to_non_nullable
              as Kelompok?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $KelompokCopyWith<$Res>? get kelompok {
    if (_value.kelompok == null) {
      return null;
    }

    return $KelompokCopyWith<$Res>(_value.kelompok!, (value) {
      return _then(_value.copyWith(kelompok: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MahasiswaCopyWith<$Res> implements $MahasiswaCopyWith<$Res> {
  factory _$$_MahasiswaCopyWith(
          _$_Mahasiswa value, $Res Function(_$_Mahasiswa) then) =
      __$$_MahasiswaCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String nim,
      String angkatan,
      String prodi,
      String nama,
      String role,
      Kelompok? kelompok});

  @override
  $KelompokCopyWith<$Res>? get kelompok;
}

/// @nodoc
class __$$_MahasiswaCopyWithImpl<$Res>
    extends _$MahasiswaCopyWithImpl<$Res, _$_Mahasiswa>
    implements _$$_MahasiswaCopyWith<$Res> {
  __$$_MahasiswaCopyWithImpl(
      _$_Mahasiswa _value, $Res Function(_$_Mahasiswa) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nim = null,
    Object? angkatan = null,
    Object? prodi = null,
    Object? nama = null,
    Object? role = null,
    Object? kelompok = freezed,
  }) {
    return _then(_$_Mahasiswa(
      nim: null == nim
          ? _value.nim
          : nim // ignore: cast_nullable_to_non_nullable
              as String,
      angkatan: null == angkatan
          ? _value.angkatan
          : angkatan // ignore: cast_nullable_to_non_nullable
              as String,
      prodi: null == prodi
          ? _value.prodi
          : prodi // ignore: cast_nullable_to_non_nullable
              as String,
      nama: null == nama
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      kelompok: freezed == kelompok
          ? _value.kelompok
          : kelompok // ignore: cast_nullable_to_non_nullable
              as Kelompok?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Mahasiswa implements _Mahasiswa {
  _$_Mahasiswa(
      {this.nim = '',
      this.angkatan = '',
      this.prodi = '',
      this.nama = '',
      this.role = '',
      this.kelompok});

  factory _$_Mahasiswa.fromJson(Map<String, dynamic> json) =>
      _$$_MahasiswaFromJson(json);

  @override
  @JsonKey()
  final String nim;
  @override
  @JsonKey()
  final String angkatan;
  @override
  @JsonKey()
  final String prodi;
  @override
  @JsonKey()
  final String nama;
  @override
  @JsonKey()
  final String role;
  @override
  final Kelompok? kelompok;

  @override
  String toString() {
    return 'Mahasiswa(nim: $nim, angkatan: $angkatan, prodi: $prodi, nama: $nama, role: $role, kelompok: $kelompok)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Mahasiswa &&
            (identical(other.nim, nim) || other.nim == nim) &&
            (identical(other.angkatan, angkatan) ||
                other.angkatan == angkatan) &&
            (identical(other.prodi, prodi) || other.prodi == prodi) &&
            (identical(other.nama, nama) || other.nama == nama) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.kelompok, kelompok) ||
                other.kelompok == kelompok));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, nim, angkatan, prodi, nama, role, kelompok);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MahasiswaCopyWith<_$_Mahasiswa> get copyWith =>
      __$$_MahasiswaCopyWithImpl<_$_Mahasiswa>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MahasiswaToJson(
      this,
    );
  }
}

abstract class _Mahasiswa implements Mahasiswa {
  factory _Mahasiswa(
      {final String nim,
      final String angkatan,
      final String prodi,
      final String nama,
      final String role,
      final Kelompok? kelompok}) = _$_Mahasiswa;

  factory _Mahasiswa.fromJson(Map<String, dynamic> json) =
      _$_Mahasiswa.fromJson;

  @override
  String get nim;
  @override
  String get angkatan;
  @override
  String get prodi;
  @override
  String get nama;
  @override
  String get role;
  @override
  Kelompok? get kelompok;
  @override
  @JsonKey(ignore: true)
  _$$_MahasiswaCopyWith<_$_Mahasiswa> get copyWith =>
      throw _privateConstructorUsedError;
}
