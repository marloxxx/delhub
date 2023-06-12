// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'assesment_point_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AssesmentPoint _$AssesmentPointFromJson(Map<String, dynamic> json) {
  return _AssesmentPoint.fromJson(json);
}

/// @nodoc
mixin _$AssesmentPoint {
  int get id => throw _privateConstructorUsedError;
  KRS? get krs => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get weight => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AssesmentPointCopyWith<AssesmentPoint> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssesmentPointCopyWith<$Res> {
  factory $AssesmentPointCopyWith(
          AssesmentPoint value, $Res Function(AssesmentPoint) then) =
      _$AssesmentPointCopyWithImpl<$Res, AssesmentPoint>;
  @useResult
  $Res call({int id, KRS? krs, String name, int weight});

  $KRSCopyWith<$Res>? get krs;
}

/// @nodoc
class _$AssesmentPointCopyWithImpl<$Res, $Val extends AssesmentPoint>
    implements $AssesmentPointCopyWith<$Res> {
  _$AssesmentPointCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? krs = freezed,
    Object? name = null,
    Object? weight = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      krs: freezed == krs
          ? _value.krs
          : krs // ignore: cast_nullable_to_non_nullable
              as KRS?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $KRSCopyWith<$Res>? get krs {
    if (_value.krs == null) {
      return null;
    }

    return $KRSCopyWith<$Res>(_value.krs!, (value) {
      return _then(_value.copyWith(krs: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AssesmentPointCopyWith<$Res>
    implements $AssesmentPointCopyWith<$Res> {
  factory _$$_AssesmentPointCopyWith(
          _$_AssesmentPoint value, $Res Function(_$_AssesmentPoint) then) =
      __$$_AssesmentPointCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, KRS? krs, String name, int weight});

  @override
  $KRSCopyWith<$Res>? get krs;
}

/// @nodoc
class __$$_AssesmentPointCopyWithImpl<$Res>
    extends _$AssesmentPointCopyWithImpl<$Res, _$_AssesmentPoint>
    implements _$$_AssesmentPointCopyWith<$Res> {
  __$$_AssesmentPointCopyWithImpl(
      _$_AssesmentPoint _value, $Res Function(_$_AssesmentPoint) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? krs = freezed,
    Object? name = null,
    Object? weight = null,
  }) {
    return _then(_$_AssesmentPoint(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      krs: freezed == krs
          ? _value.krs
          : krs // ignore: cast_nullable_to_non_nullable
              as KRS?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AssesmentPoint implements _AssesmentPoint {
  _$_AssesmentPoint(
      {required this.id, this.krs, this.name = '', this.weight = 0});

  factory _$_AssesmentPoint.fromJson(Map<String, dynamic> json) =>
      _$$_AssesmentPointFromJson(json);

  @override
  final int id;
  @override
  final KRS? krs;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final int weight;

  @override
  String toString() {
    return 'AssesmentPoint(id: $id, krs: $krs, name: $name, weight: $weight)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AssesmentPoint &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.krs, krs) || other.krs == krs) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.weight, weight) || other.weight == weight));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, krs, name, weight);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AssesmentPointCopyWith<_$_AssesmentPoint> get copyWith =>
      __$$_AssesmentPointCopyWithImpl<_$_AssesmentPoint>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AssesmentPointToJson(
      this,
    );
  }
}

abstract class _AssesmentPoint implements AssesmentPoint {
  factory _AssesmentPoint(
      {required final int id,
      final KRS? krs,
      final String name,
      final int weight}) = _$_AssesmentPoint;

  factory _AssesmentPoint.fromJson(Map<String, dynamic> json) =
      _$_AssesmentPoint.fromJson;

  @override
  int get id;
  @override
  KRS? get krs;
  @override
  String get name;
  @override
  int get weight;
  @override
  @JsonKey(ignore: true)
  _$$_AssesmentPointCopyWith<_$_AssesmentPoint> get copyWith =>
      throw _privateConstructorUsedError;
}
