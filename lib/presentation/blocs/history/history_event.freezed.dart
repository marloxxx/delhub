// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'history_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HistoryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getData,
    required TResult Function(int kelompokId) getDataByKelompokId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getData,
    TResult? Function(int kelompokId)? getDataByKelompokId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getData,
    TResult Function(int kelompokId)? getDataByKelompokId,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetDataEvent value) getData,
    required TResult Function(GetDataByKelompokIdEvent value)
        getDataByKelompokId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetDataEvent value)? getData,
    TResult? Function(GetDataByKelompokIdEvent value)? getDataByKelompokId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetDataEvent value)? getData,
    TResult Function(GetDataByKelompokIdEvent value)? getDataByKelompokId,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryEventCopyWith<$Res> {
  factory $HistoryEventCopyWith(
          HistoryEvent value, $Res Function(HistoryEvent) then) =
      _$HistoryEventCopyWithImpl<$Res, HistoryEvent>;
}

/// @nodoc
class _$HistoryEventCopyWithImpl<$Res, $Val extends HistoryEvent>
    implements $HistoryEventCopyWith<$Res> {
  _$HistoryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetDataEventCopyWith<$Res> {
  factory _$$GetDataEventCopyWith(
          _$GetDataEvent value, $Res Function(_$GetDataEvent) then) =
      __$$GetDataEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetDataEventCopyWithImpl<$Res>
    extends _$HistoryEventCopyWithImpl<$Res, _$GetDataEvent>
    implements _$$GetDataEventCopyWith<$Res> {
  __$$GetDataEventCopyWithImpl(
      _$GetDataEvent _value, $Res Function(_$GetDataEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetDataEvent implements GetDataEvent {
  const _$GetDataEvent();

  @override
  String toString() {
    return 'HistoryEvent.getData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetDataEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getData,
    required TResult Function(int kelompokId) getDataByKelompokId,
  }) {
    return getData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getData,
    TResult? Function(int kelompokId)? getDataByKelompokId,
  }) {
    return getData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getData,
    TResult Function(int kelompokId)? getDataByKelompokId,
    required TResult orElse(),
  }) {
    if (getData != null) {
      return getData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetDataEvent value) getData,
    required TResult Function(GetDataByKelompokIdEvent value)
        getDataByKelompokId,
  }) {
    return getData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetDataEvent value)? getData,
    TResult? Function(GetDataByKelompokIdEvent value)? getDataByKelompokId,
  }) {
    return getData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetDataEvent value)? getData,
    TResult Function(GetDataByKelompokIdEvent value)? getDataByKelompokId,
    required TResult orElse(),
  }) {
    if (getData != null) {
      return getData(this);
    }
    return orElse();
  }
}

abstract class GetDataEvent implements HistoryEvent {
  const factory GetDataEvent() = _$GetDataEvent;
}

/// @nodoc
abstract class _$$GetDataByKelompokIdEventCopyWith<$Res> {
  factory _$$GetDataByKelompokIdEventCopyWith(_$GetDataByKelompokIdEvent value,
          $Res Function(_$GetDataByKelompokIdEvent) then) =
      __$$GetDataByKelompokIdEventCopyWithImpl<$Res>;
  @useResult
  $Res call({int kelompokId});
}

/// @nodoc
class __$$GetDataByKelompokIdEventCopyWithImpl<$Res>
    extends _$HistoryEventCopyWithImpl<$Res, _$GetDataByKelompokIdEvent>
    implements _$$GetDataByKelompokIdEventCopyWith<$Res> {
  __$$GetDataByKelompokIdEventCopyWithImpl(_$GetDataByKelompokIdEvent _value,
      $Res Function(_$GetDataByKelompokIdEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kelompokId = null,
  }) {
    return _then(_$GetDataByKelompokIdEvent(
      null == kelompokId
          ? _value.kelompokId
          : kelompokId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetDataByKelompokIdEvent implements GetDataByKelompokIdEvent {
  const _$GetDataByKelompokIdEvent(this.kelompokId);

  @override
  final int kelompokId;

  @override
  String toString() {
    return 'HistoryEvent.getDataByKelompokId(kelompokId: $kelompokId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDataByKelompokIdEvent &&
            (identical(other.kelompokId, kelompokId) ||
                other.kelompokId == kelompokId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, kelompokId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDataByKelompokIdEventCopyWith<_$GetDataByKelompokIdEvent>
      get copyWith =>
          __$$GetDataByKelompokIdEventCopyWithImpl<_$GetDataByKelompokIdEvent>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getData,
    required TResult Function(int kelompokId) getDataByKelompokId,
  }) {
    return getDataByKelompokId(kelompokId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getData,
    TResult? Function(int kelompokId)? getDataByKelompokId,
  }) {
    return getDataByKelompokId?.call(kelompokId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getData,
    TResult Function(int kelompokId)? getDataByKelompokId,
    required TResult orElse(),
  }) {
    if (getDataByKelompokId != null) {
      return getDataByKelompokId(kelompokId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetDataEvent value) getData,
    required TResult Function(GetDataByKelompokIdEvent value)
        getDataByKelompokId,
  }) {
    return getDataByKelompokId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetDataEvent value)? getData,
    TResult? Function(GetDataByKelompokIdEvent value)? getDataByKelompokId,
  }) {
    return getDataByKelompokId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetDataEvent value)? getData,
    TResult Function(GetDataByKelompokIdEvent value)? getDataByKelompokId,
    required TResult orElse(),
  }) {
    if (getDataByKelompokId != null) {
      return getDataByKelompokId(this);
    }
    return orElse();
  }
}

abstract class GetDataByKelompokIdEvent implements HistoryEvent {
  const factory GetDataByKelompokIdEvent(final int kelompokId) =
      _$GetDataByKelompokIdEvent;

  int get kelompokId;
  @JsonKey(ignore: true)
  _$$GetDataByKelompokIdEventCopyWith<_$GetDataByKelompokIdEvent>
      get copyWith => throw _privateConstructorUsedError;
}
