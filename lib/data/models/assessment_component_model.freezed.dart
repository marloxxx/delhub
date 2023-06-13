// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'assessment_component_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AssessmentComponent _$AssessmentComponentFromJson(Map<String, dynamic> json) {
  return _AssessmentComponent.fromJson(json);
}

/// @nodoc
mixin _$AssessmentComponent {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get weight => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AssessmentComponentCopyWith<AssessmentComponent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssessmentComponentCopyWith<$Res> {
  factory $AssessmentComponentCopyWith(
          AssessmentComponent value, $Res Function(AssessmentComponent) then) =
      _$AssessmentComponentCopyWithImpl<$Res, AssessmentComponent>;
  @useResult
  $Res call({int id, String name, int weight});
}

/// @nodoc
class _$AssessmentComponentCopyWithImpl<$Res, $Val extends AssessmentComponent>
    implements $AssessmentComponentCopyWith<$Res> {
  _$AssessmentComponentCopyWithImpl(this._value, this._then);

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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AssessmentComponentCopyWith<$Res>
    implements $AssessmentComponentCopyWith<$Res> {
  factory _$$_AssessmentComponentCopyWith(_$_AssessmentComponent value,
          $Res Function(_$_AssessmentComponent) then) =
      __$$_AssessmentComponentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, int weight});
}

/// @nodoc
class __$$_AssessmentComponentCopyWithImpl<$Res>
    extends _$AssessmentComponentCopyWithImpl<$Res, _$_AssessmentComponent>
    implements _$$_AssessmentComponentCopyWith<$Res> {
  __$$_AssessmentComponentCopyWithImpl(_$_AssessmentComponent _value,
      $Res Function(_$_AssessmentComponent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? weight = null,
  }) {
    return _then(_$_AssessmentComponent(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AssessmentComponent implements _AssessmentComponent {
  _$_AssessmentComponent({required this.id, this.name = '', this.weight = 0});

  factory _$_AssessmentComponent.fromJson(Map<String, dynamic> json) =>
      _$$_AssessmentComponentFromJson(json);

  @override
  final int id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final int weight;

  @override
  String toString() {
    return 'AssessmentComponent(id: $id, name: $name, weight: $weight)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AssessmentComponent &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.weight, weight) || other.weight == weight));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, weight);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AssessmentComponentCopyWith<_$_AssessmentComponent> get copyWith =>
      __$$_AssessmentComponentCopyWithImpl<_$_AssessmentComponent>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AssessmentComponentToJson(
      this,
    );
  }
}

abstract class _AssessmentComponent implements AssessmentComponent {
  factory _AssessmentComponent(
      {required final int id,
      final String name,
      final int weight}) = _$_AssessmentComponent;

  factory _AssessmentComponent.fromJson(Map<String, dynamic> json) =
      _$_AssessmentComponent.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  int get weight;
  @override
  @JsonKey(ignore: true)
  _$$_AssessmentComponentCopyWith<_$_AssessmentComponent> get copyWith =>
      throw _privateConstructorUsedError;
}
