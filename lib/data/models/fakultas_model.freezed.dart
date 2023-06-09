// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fakultas_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Fakultas _$FakultasFromJson(Map<String, dynamic> json) {
  return _Fakultas.fromJson(json);
}

/// @nodoc
mixin _$Fakultas {
  String get nama => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FakultasCopyWith<Fakultas> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FakultasCopyWith<$Res> {
  factory $FakultasCopyWith(Fakultas value, $Res Function(Fakultas) then) =
      _$FakultasCopyWithImpl<$Res, Fakultas>;
  @useResult
  $Res call({String nama});
}

/// @nodoc
class _$FakultasCopyWithImpl<$Res, $Val extends Fakultas>
    implements $FakultasCopyWith<$Res> {
  _$FakultasCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nama = null,
  }) {
    return _then(_value.copyWith(
      nama: null == nama
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FakultasCopyWith<$Res> implements $FakultasCopyWith<$Res> {
  factory _$$_FakultasCopyWith(
          _$_Fakultas value, $Res Function(_$_Fakultas) then) =
      __$$_FakultasCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String nama});
}

/// @nodoc
class __$$_FakultasCopyWithImpl<$Res>
    extends _$FakultasCopyWithImpl<$Res, _$_Fakultas>
    implements _$$_FakultasCopyWith<$Res> {
  __$$_FakultasCopyWithImpl(
      _$_Fakultas _value, $Res Function(_$_Fakultas) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nama = null,
  }) {
    return _then(_$_Fakultas(
      nama: null == nama
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Fakultas implements _Fakultas {
  _$_Fakultas({required this.nama});

  factory _$_Fakultas.fromJson(Map<String, dynamic> json) =>
      _$$_FakultasFromJson(json);

  @override
  final String nama;

  @override
  String toString() {
    return 'Fakultas(nama: $nama)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Fakultas &&
            (identical(other.nama, nama) || other.nama == nama));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, nama);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FakultasCopyWith<_$_Fakultas> get copyWith =>
      __$$_FakultasCopyWithImpl<_$_Fakultas>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FakultasToJson(
      this,
    );
  }
}

abstract class _Fakultas implements Fakultas {
  factory _Fakultas({required final String nama}) = _$_Fakultas;

  factory _Fakultas.fromJson(Map<String, dynamic> json) = _$_Fakultas.fromJson;

  @override
  String get nama;
  @override
  @JsonKey(ignore: true)
  _$$_FakultasCopyWith<_$_Fakultas> get copyWith =>
      throw _privateConstructorUsedError;
}
