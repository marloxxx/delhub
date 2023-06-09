// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'prodi_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Prodi _$ProdiFromJson(Map<String, dynamic> json) {
  return _Prodi.fromJson(json);
}

/// @nodoc
mixin _$Prodi {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get kode => throw _privateConstructorUsedError;
  String get fakultas => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProdiCopyWith<Prodi> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProdiCopyWith<$Res> {
  factory $ProdiCopyWith(Prodi value, $Res Function(Prodi) then) =
      _$ProdiCopyWithImpl<$Res, Prodi>;
  @useResult
  $Res call({int id, String name, String kode, String fakultas});
}

/// @nodoc
class _$ProdiCopyWithImpl<$Res, $Val extends Prodi>
    implements $ProdiCopyWith<$Res> {
  _$ProdiCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? kode = null,
    Object? fakultas = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      kode: null == kode
          ? _value.kode
          : kode // ignore: cast_nullable_to_non_nullable
              as String,
      fakultas: null == fakultas
          ? _value.fakultas
          : fakultas // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProdiCopyWith<$Res> implements $ProdiCopyWith<$Res> {
  factory _$$_ProdiCopyWith(_$_Prodi value, $Res Function(_$_Prodi) then) =
      __$$_ProdiCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String kode, String fakultas});
}

/// @nodoc
class __$$_ProdiCopyWithImpl<$Res> extends _$ProdiCopyWithImpl<$Res, _$_Prodi>
    implements _$$_ProdiCopyWith<$Res> {
  __$$_ProdiCopyWithImpl(_$_Prodi _value, $Res Function(_$_Prodi) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? kode = null,
    Object? fakultas = null,
  }) {
    return _then(_$_Prodi(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      kode: null == kode
          ? _value.kode
          : kode // ignore: cast_nullable_to_non_nullable
              as String,
      fakultas: null == fakultas
          ? _value.fakultas
          : fakultas // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Prodi implements _Prodi {
  _$_Prodi(
      {required this.id,
      required this.name,
      required this.kode,
      required this.fakultas});

  factory _$_Prodi.fromJson(Map<String, dynamic> json) =>
      _$$_ProdiFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String kode;
  @override
  final String fakultas;

  @override
  String toString() {
    return 'Prodi(id: $id, name: $name, kode: $kode, fakultas: $fakultas)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Prodi &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.kode, kode) || other.kode == kode) &&
            (identical(other.fakultas, fakultas) ||
                other.fakultas == fakultas));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, kode, fakultas);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProdiCopyWith<_$_Prodi> get copyWith =>
      __$$_ProdiCopyWithImpl<_$_Prodi>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProdiToJson(
      this,
    );
  }
}

abstract class _Prodi implements Prodi {
  factory _Prodi(
      {required final int id,
      required final String name,
      required final String kode,
      required final String fakultas}) = _$_Prodi;

  factory _Prodi.fromJson(Map<String, dynamic> json) = _$_Prodi.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get kode;
  @override
  String get fakultas;
  @override
  @JsonKey(ignore: true)
  _$$_ProdiCopyWith<_$_Prodi> get copyWith =>
      throw _privateConstructorUsedError;
}
