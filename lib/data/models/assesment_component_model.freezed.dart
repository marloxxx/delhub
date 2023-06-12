// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'assesment_component_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AssesmentComponent _$AssesmentComponentFromJson(Map<String, dynamic> json) {
  return _AssesmentComponent.fromJson(json);
}

/// @nodoc
mixin _$AssesmentComponent {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get weight => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AssesmentComponentCopyWith<AssesmentComponent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssesmentComponentCopyWith<$Res> {
  factory $AssesmentComponentCopyWith(
          AssesmentComponent value, $Res Function(AssesmentComponent) then) =
      _$AssesmentComponentCopyWithImpl<$Res, AssesmentComponent>;
  @useResult
  $Res call({int id, String name, int weight});
}

/// @nodoc
class _$AssesmentComponentCopyWithImpl<$Res, $Val extends AssesmentComponent>
    implements $AssesmentComponentCopyWith<$Res> {
  _$AssesmentComponentCopyWithImpl(this._value, this._then);

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
abstract class _$$_AssesmentComponentCopyWith<$Res>
    implements $AssesmentComponentCopyWith<$Res> {
  factory _$$_AssesmentComponentCopyWith(_$_AssesmentComponent value,
          $Res Function(_$_AssesmentComponent) then) =
      __$$_AssesmentComponentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, int weight});
}

/// @nodoc
class __$$_AssesmentComponentCopyWithImpl<$Res>
    extends _$AssesmentComponentCopyWithImpl<$Res, _$_AssesmentComponent>
    implements _$$_AssesmentComponentCopyWith<$Res> {
  __$$_AssesmentComponentCopyWithImpl(
      _$_AssesmentComponent _value, $Res Function(_$_AssesmentComponent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? weight = null,
  }) {
    return _then(_$_AssesmentComponent(
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
class _$_AssesmentComponent implements _AssesmentComponent {
  _$_AssesmentComponent({required this.id, this.name = '', this.weight = 0});

  factory _$_AssesmentComponent.fromJson(Map<String, dynamic> json) =>
      _$$_AssesmentComponentFromJson(json);

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
    return 'AssesmentComponent(id: $id, name: $name, weight: $weight)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AssesmentComponent &&
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
  _$$_AssesmentComponentCopyWith<_$_AssesmentComponent> get copyWith =>
      __$$_AssesmentComponentCopyWithImpl<_$_AssesmentComponent>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AssesmentComponentToJson(
      this,
    );
  }
}

abstract class _AssesmentComponent implements AssesmentComponent {
  factory _AssesmentComponent(
      {required final int id,
      final String name,
      final int weight}) = _$_AssesmentComponent;

  factory _AssesmentComponent.fromJson(Map<String, dynamic> json) =
      _$_AssesmentComponent.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  int get weight;
  @override
  @JsonKey(ignore: true)
  _$$_AssesmentComponentCopyWith<_$_AssesmentComponent> get copyWith =>
      throw _privateConstructorUsedError;
}
