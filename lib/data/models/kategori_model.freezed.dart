// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kategori_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Kategori _$KategoriFromJson(Map<String, dynamic> json) {
  return _Kategori.fromJson(json);
}

/// @nodoc
mixin _$Kategori {
  int get id => throw _privateConstructorUsedError;
  String get kode_mk => throw _privateConstructorUsedError;
  String get nama_mk => throw _privateConstructorUsedError;
  String get nama_singkat => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KategoriCopyWith<Kategori> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KategoriCopyWith<$Res> {
  factory $KategoriCopyWith(Kategori value, $Res Function(Kategori) then) =
      _$KategoriCopyWithImpl<$Res, Kategori>;
  @useResult
  $Res call({int id, String kode_mk, String nama_mk, String nama_singkat});
}

/// @nodoc
class _$KategoriCopyWithImpl<$Res, $Val extends Kategori>
    implements $KategoriCopyWith<$Res> {
  _$KategoriCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? kode_mk = null,
    Object? nama_mk = null,
    Object? nama_singkat = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      kode_mk: null == kode_mk
          ? _value.kode_mk
          : kode_mk // ignore: cast_nullable_to_non_nullable
              as String,
      nama_mk: null == nama_mk
          ? _value.nama_mk
          : nama_mk // ignore: cast_nullable_to_non_nullable
              as String,
      nama_singkat: null == nama_singkat
          ? _value.nama_singkat
          : nama_singkat // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_KategoriCopyWith<$Res> implements $KategoriCopyWith<$Res> {
  factory _$$_KategoriCopyWith(
          _$_Kategori value, $Res Function(_$_Kategori) then) =
      __$$_KategoriCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String kode_mk, String nama_mk, String nama_singkat});
}

/// @nodoc
class __$$_KategoriCopyWithImpl<$Res>
    extends _$KategoriCopyWithImpl<$Res, _$_Kategori>
    implements _$$_KategoriCopyWith<$Res> {
  __$$_KategoriCopyWithImpl(
      _$_Kategori _value, $Res Function(_$_Kategori) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? kode_mk = null,
    Object? nama_mk = null,
    Object? nama_singkat = null,
  }) {
    return _then(_$_Kategori(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      kode_mk: null == kode_mk
          ? _value.kode_mk
          : kode_mk // ignore: cast_nullable_to_non_nullable
              as String,
      nama_mk: null == nama_mk
          ? _value.nama_mk
          : nama_mk // ignore: cast_nullable_to_non_nullable
              as String,
      nama_singkat: null == nama_singkat
          ? _value.nama_singkat
          : nama_singkat // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Kategori implements _Kategori {
  _$_Kategori(
      {required this.id,
      required this.kode_mk,
      required this.nama_mk,
      required this.nama_singkat});

  factory _$_Kategori.fromJson(Map<String, dynamic> json) =>
      _$$_KategoriFromJson(json);

  @override
  final int id;
  @override
  final String kode_mk;
  @override
  final String nama_mk;
  @override
  final String nama_singkat;

  @override
  String toString() {
    return 'Kategori(id: $id, kode_mk: $kode_mk, nama_mk: $nama_mk, nama_singkat: $nama_singkat)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Kategori &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.kode_mk, kode_mk) || other.kode_mk == kode_mk) &&
            (identical(other.nama_mk, nama_mk) || other.nama_mk == nama_mk) &&
            (identical(other.nama_singkat, nama_singkat) ||
                other.nama_singkat == nama_singkat));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, kode_mk, nama_mk, nama_singkat);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_KategoriCopyWith<_$_Kategori> get copyWith =>
      __$$_KategoriCopyWithImpl<_$_Kategori>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_KategoriToJson(
      this,
    );
  }
}

abstract class _Kategori implements Kategori {
  factory _Kategori(
      {required final int id,
      required final String kode_mk,
      required final String nama_mk,
      required final String nama_singkat}) = _$_Kategori;

  factory _Kategori.fromJson(Map<String, dynamic> json) = _$_Kategori.fromJson;

  @override
  int get id;
  @override
  String get kode_mk;
  @override
  String get nama_mk;
  @override
  String get nama_singkat;
  @override
  @JsonKey(ignore: true)
  _$$_KategoriCopyWith<_$_Kategori> get copyWith =>
      throw _privateConstructorUsedError;
}
