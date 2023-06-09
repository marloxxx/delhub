// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dosen_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Dosen _$DosenFromJson(Map<String, dynamic> json) {
  return _Dosen.fromJson(json);
}

/// @nodoc
mixin _$Dosen {
  String get nidn => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DosenCopyWith<Dosen> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DosenCopyWith<$Res> {
  factory $DosenCopyWith(Dosen value, $Res Function(Dosen) then) =
      _$DosenCopyWithImpl<$Res, Dosen>;
  @useResult
  $Res call({String nidn, String name});
}

/// @nodoc
class _$DosenCopyWithImpl<$Res, $Val extends Dosen>
    implements $DosenCopyWith<$Res> {
  _$DosenCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nidn = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      nidn: null == nidn
          ? _value.nidn
          : nidn // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DosenCopyWith<$Res> implements $DosenCopyWith<$Res> {
  factory _$$_DosenCopyWith(_$_Dosen value, $Res Function(_$_Dosen) then) =
      __$$_DosenCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String nidn, String name});
}

/// @nodoc
class __$$_DosenCopyWithImpl<$Res> extends _$DosenCopyWithImpl<$Res, _$_Dosen>
    implements _$$_DosenCopyWith<$Res> {
  __$$_DosenCopyWithImpl(_$_Dosen _value, $Res Function(_$_Dosen) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nidn = null,
    Object? name = null,
  }) {
    return _then(_$_Dosen(
      nidn: null == nidn
          ? _value.nidn
          : nidn // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Dosen implements _Dosen {
  _$_Dosen({this.nidn = '', this.name = ''});

  factory _$_Dosen.fromJson(Map<String, dynamic> json) =>
      _$$_DosenFromJson(json);

  @override
  @JsonKey()
  final String nidn;
  @override
  @JsonKey()
  final String name;

  @override
  String toString() {
    return 'Dosen(nidn: $nidn, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Dosen &&
            (identical(other.nidn, nidn) || other.nidn == nidn) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, nidn, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DosenCopyWith<_$_Dosen> get copyWith =>
      __$$_DosenCopyWithImpl<_$_Dosen>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DosenToJson(
      this,
    );
  }
}

abstract class _Dosen implements Dosen {
  factory _Dosen({final String nidn, final String name}) = _$_Dosen;

  factory _Dosen.fromJson(Map<String, dynamic> json) = _$_Dosen.fromJson;

  @override
  String get nidn;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_DosenCopyWith<_$_Dosen> get copyWith =>
      throw _privateConstructorUsedError;
}
