// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'krs_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

KRS _$KRSFromJson(Map<String, dynamic> json) {
  return _KRS.fromJson(json);
}

/// @nodoc
mixin _$KRS {
  int get id => throw _privateConstructorUsedError;
  String get mataKuliah => throw _privateConstructorUsedError;
  String get dosen => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KRSCopyWith<KRS> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KRSCopyWith<$Res> {
  factory $KRSCopyWith(KRS value, $Res Function(KRS) then) =
      _$KRSCopyWithImpl<$Res, KRS>;
  @useResult
  $Res call({int id, String mataKuliah, String dosen});
}

/// @nodoc
class _$KRSCopyWithImpl<$Res, $Val extends KRS> implements $KRSCopyWith<$Res> {
  _$KRSCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? mataKuliah = null,
    Object? dosen = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      mataKuliah: null == mataKuliah
          ? _value.mataKuliah
          : mataKuliah // ignore: cast_nullable_to_non_nullable
              as String,
      dosen: null == dosen
          ? _value.dosen
          : dosen // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_KRSCopyWith<$Res> implements $KRSCopyWith<$Res> {
  factory _$$_KRSCopyWith(_$_KRS value, $Res Function(_$_KRS) then) =
      __$$_KRSCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String mataKuliah, String dosen});
}

/// @nodoc
class __$$_KRSCopyWithImpl<$Res> extends _$KRSCopyWithImpl<$Res, _$_KRS>
    implements _$$_KRSCopyWith<$Res> {
  __$$_KRSCopyWithImpl(_$_KRS _value, $Res Function(_$_KRS) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? mataKuliah = null,
    Object? dosen = null,
  }) {
    return _then(_$_KRS(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      mataKuliah: null == mataKuliah
          ? _value.mataKuliah
          : mataKuliah // ignore: cast_nullable_to_non_nullable
              as String,
      dosen: null == dosen
          ? _value.dosen
          : dosen // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_KRS implements _KRS {
  _$_KRS({this.id = 0, this.mataKuliah = '', this.dosen = ''});

  factory _$_KRS.fromJson(Map<String, dynamic> json) => _$$_KRSFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String mataKuliah;
  @override
  @JsonKey()
  final String dosen;

  @override
  String toString() {
    return 'KRS(id: $id, mataKuliah: $mataKuliah, dosen: $dosen)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_KRS &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.mataKuliah, mataKuliah) ||
                other.mataKuliah == mataKuliah) &&
            (identical(other.dosen, dosen) || other.dosen == dosen));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, mataKuliah, dosen);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_KRSCopyWith<_$_KRS> get copyWith =>
      __$$_KRSCopyWithImpl<_$_KRS>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_KRSToJson(
      this,
    );
  }
}

abstract class _KRS implements KRS {
  factory _KRS({final int id, final String mataKuliah, final String dosen}) =
      _$_KRS;

  factory _KRS.fromJson(Map<String, dynamic> json) = _$_KRS.fromJson;

  @override
  int get id;
  @override
  String get mataKuliah;
  @override
  String get dosen;
  @override
  @JsonKey(ignore: true)
  _$$_KRSCopyWith<_$_KRS> get copyWith => throw _privateConstructorUsedError;
}
