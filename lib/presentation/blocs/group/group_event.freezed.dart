// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'group_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GroupEvent {
  int get krsId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int krsId) getDatabyKrs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int krsId)? getDatabyKrs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int krsId)? getDatabyKrs,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetDatabyKrsEvent value) getDatabyKrs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetDatabyKrsEvent value)? getDatabyKrs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetDatabyKrsEvent value)? getDatabyKrs,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GroupEventCopyWith<GroupEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupEventCopyWith<$Res> {
  factory $GroupEventCopyWith(
          GroupEvent value, $Res Function(GroupEvent) then) =
      _$GroupEventCopyWithImpl<$Res, GroupEvent>;
  @useResult
  $Res call({int krsId});
}

/// @nodoc
class _$GroupEventCopyWithImpl<$Res, $Val extends GroupEvent>
    implements $GroupEventCopyWith<$Res> {
  _$GroupEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? krsId = null,
  }) {
    return _then(_value.copyWith(
      krsId: null == krsId
          ? _value.krsId
          : krsId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetDatabyKrsEventCopyWith<$Res>
    implements $GroupEventCopyWith<$Res> {
  factory _$$GetDatabyKrsEventCopyWith(
          _$GetDatabyKrsEvent value, $Res Function(_$GetDatabyKrsEvent) then) =
      __$$GetDatabyKrsEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int krsId});
}

/// @nodoc
class __$$GetDatabyKrsEventCopyWithImpl<$Res>
    extends _$GroupEventCopyWithImpl<$Res, _$GetDatabyKrsEvent>
    implements _$$GetDatabyKrsEventCopyWith<$Res> {
  __$$GetDatabyKrsEventCopyWithImpl(
      _$GetDatabyKrsEvent _value, $Res Function(_$GetDatabyKrsEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? krsId = null,
  }) {
    return _then(_$GetDatabyKrsEvent(
      krsId: null == krsId
          ? _value.krsId
          : krsId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetDatabyKrsEvent implements GetDatabyKrsEvent {
  const _$GetDatabyKrsEvent({required this.krsId});

  @override
  final int krsId;

  @override
  String toString() {
    return 'GroupEvent.getDatabyKrs(krsId: $krsId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDatabyKrsEvent &&
            (identical(other.krsId, krsId) || other.krsId == krsId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, krsId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDatabyKrsEventCopyWith<_$GetDatabyKrsEvent> get copyWith =>
      __$$GetDatabyKrsEventCopyWithImpl<_$GetDatabyKrsEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int krsId) getDatabyKrs,
  }) {
    return getDatabyKrs(krsId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int krsId)? getDatabyKrs,
  }) {
    return getDatabyKrs?.call(krsId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int krsId)? getDatabyKrs,
    required TResult orElse(),
  }) {
    if (getDatabyKrs != null) {
      return getDatabyKrs(krsId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetDatabyKrsEvent value) getDatabyKrs,
  }) {
    return getDatabyKrs(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetDatabyKrsEvent value)? getDatabyKrs,
  }) {
    return getDatabyKrs?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetDatabyKrsEvent value)? getDatabyKrs,
    required TResult orElse(),
  }) {
    if (getDatabyKrs != null) {
      return getDatabyKrs(this);
    }
    return orElse();
  }
}

abstract class GetDatabyKrsEvent implements GroupEvent {
  const factory GetDatabyKrsEvent({required final int krsId}) =
      _$GetDatabyKrsEvent;

  @override
  int get krsId;
  @override
  @JsonKey(ignore: true)
  _$$GetDatabyKrsEventCopyWith<_$GetDatabyKrsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
