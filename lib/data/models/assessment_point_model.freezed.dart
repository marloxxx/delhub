// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'assessment_point_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AssessmentPoint _$AssessmentPointFromJson(Map<String, dynamic> json) {
  return _AssessmentPoint.fromJson(json);
}

/// @nodoc
mixin _$AssessmentPoint {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get weight => throw _privateConstructorUsedError;
  List<AssessmentComponent>? get components =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AssessmentPointCopyWith<AssessmentPoint> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssessmentPointCopyWith<$Res> {
  factory $AssessmentPointCopyWith(
          AssessmentPoint value, $Res Function(AssessmentPoint) then) =
      _$AssessmentPointCopyWithImpl<$Res, AssessmentPoint>;
  @useResult
  $Res call(
      {int id, String name, int weight, List<AssessmentComponent>? components});
}

/// @nodoc
class _$AssessmentPointCopyWithImpl<$Res, $Val extends AssessmentPoint>
    implements $AssessmentPointCopyWith<$Res> {
  _$AssessmentPointCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? weight = null,
    Object? components = freezed,
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
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      components: freezed == components
          ? _value.components
          : components // ignore: cast_nullable_to_non_nullable
              as List<AssessmentComponent>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AssessmentPointCopyWith<$Res>
    implements $AssessmentPointCopyWith<$Res> {
  factory _$$_AssessmentPointCopyWith(
          _$_AssessmentPoint value, $Res Function(_$_AssessmentPoint) then) =
      __$$_AssessmentPointCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id, String name, int weight, List<AssessmentComponent>? components});
}

/// @nodoc
class __$$_AssessmentPointCopyWithImpl<$Res>
    extends _$AssessmentPointCopyWithImpl<$Res, _$_AssessmentPoint>
    implements _$$_AssessmentPointCopyWith<$Res> {
  __$$_AssessmentPointCopyWithImpl(
      _$_AssessmentPoint _value, $Res Function(_$_AssessmentPoint) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? weight = null,
    Object? components = freezed,
  }) {
    return _then(_$_AssessmentPoint(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      components: freezed == components
          ? _value._components
          : components // ignore: cast_nullable_to_non_nullable
              as List<AssessmentComponent>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AssessmentPoint implements _AssessmentPoint {
  _$_AssessmentPoint(
      {required this.id,
      this.name = '',
      this.weight = 0,
      final List<AssessmentComponent>? components})
      : _components = components;

  factory _$_AssessmentPoint.fromJson(Map<String, dynamic> json) =>
      _$$_AssessmentPointFromJson(json);

  @override
  final int id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final int weight;
  final List<AssessmentComponent>? _components;
  @override
  List<AssessmentComponent>? get components {
    final value = _components;
    if (value == null) return null;
    if (_components is EqualUnmodifiableListView) return _components;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AssessmentPoint(id: $id, name: $name, weight: $weight, components: $components)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AssessmentPoint &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            const DeepCollectionEquality()
                .equals(other._components, _components));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, weight,
      const DeepCollectionEquality().hash(_components));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AssessmentPointCopyWith<_$_AssessmentPoint> get copyWith =>
      __$$_AssessmentPointCopyWithImpl<_$_AssessmentPoint>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AssessmentPointToJson(
      this,
    );
  }
}

abstract class _AssessmentPoint implements AssessmentPoint {
  factory _AssessmentPoint(
      {required final int id,
      final String name,
      final int weight,
      final List<AssessmentComponent>? components}) = _$_AssessmentPoint;

  factory _AssessmentPoint.fromJson(Map<String, dynamic> json) =
      _$_AssessmentPoint.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  int get weight;
  @override
  List<AssessmentComponent>? get components;
  @override
  @JsonKey(ignore: true)
  _$$_AssessmentPointCopyWith<_$_AssessmentPoint> get copyWith =>
      throw _privateConstructorUsedError;
}
