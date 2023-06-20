// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reschedule_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RescheduleEvent {
  Request get request => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Request request) getData,
    required TResult Function(Request request) updateData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Request request)? getData,
    TResult? Function(Request request)? updateData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Request request)? getData,
    TResult Function(Request request)? updateData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetDataEvent value) getData,
    required TResult Function(UpdateDataEvent value) updateData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetDataEvent value)? getData,
    TResult? Function(UpdateDataEvent value)? updateData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetDataEvent value)? getData,
    TResult Function(UpdateDataEvent value)? updateData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RescheduleEventCopyWith<RescheduleEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RescheduleEventCopyWith<$Res> {
  factory $RescheduleEventCopyWith(
          RescheduleEvent value, $Res Function(RescheduleEvent) then) =
      _$RescheduleEventCopyWithImpl<$Res, RescheduleEvent>;
  @useResult
  $Res call({Request request});

  $RequestCopyWith<$Res> get request;
}

/// @nodoc
class _$RescheduleEventCopyWithImpl<$Res, $Val extends RescheduleEvent>
    implements $RescheduleEventCopyWith<$Res> {
  _$RescheduleEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_value.copyWith(
      request: null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as Request,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RequestCopyWith<$Res> get request {
    return $RequestCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GetDataEventCopyWith<$Res>
    implements $RescheduleEventCopyWith<$Res> {
  factory _$$GetDataEventCopyWith(
          _$GetDataEvent value, $Res Function(_$GetDataEvent) then) =
      __$$GetDataEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Request request});

  @override
  $RequestCopyWith<$Res> get request;
}

/// @nodoc
class __$$GetDataEventCopyWithImpl<$Res>
    extends _$RescheduleEventCopyWithImpl<$Res, _$GetDataEvent>
    implements _$$GetDataEventCopyWith<$Res> {
  __$$GetDataEventCopyWithImpl(
      _$GetDataEvent _value, $Res Function(_$GetDataEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_$GetDataEvent(
      request: null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as Request,
    ));
  }
}

/// @nodoc

class _$GetDataEvent implements GetDataEvent {
  const _$GetDataEvent({required this.request});

  @override
  final Request request;

  @override
  String toString() {
    return 'RescheduleEvent.getData(request: $request)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDataEvent &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDataEventCopyWith<_$GetDataEvent> get copyWith =>
      __$$GetDataEventCopyWithImpl<_$GetDataEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Request request) getData,
    required TResult Function(Request request) updateData,
  }) {
    return getData(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Request request)? getData,
    TResult? Function(Request request)? updateData,
  }) {
    return getData?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Request request)? getData,
    TResult Function(Request request)? updateData,
    required TResult orElse(),
  }) {
    if (getData != null) {
      return getData(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetDataEvent value) getData,
    required TResult Function(UpdateDataEvent value) updateData,
  }) {
    return getData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetDataEvent value)? getData,
    TResult? Function(UpdateDataEvent value)? updateData,
  }) {
    return getData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetDataEvent value)? getData,
    TResult Function(UpdateDataEvent value)? updateData,
    required TResult orElse(),
  }) {
    if (getData != null) {
      return getData(this);
    }
    return orElse();
  }
}

abstract class GetDataEvent implements RescheduleEvent {
  const factory GetDataEvent({required final Request request}) = _$GetDataEvent;

  @override
  Request get request;
  @override
  @JsonKey(ignore: true)
  _$$GetDataEventCopyWith<_$GetDataEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateDataEventCopyWith<$Res>
    implements $RescheduleEventCopyWith<$Res> {
  factory _$$UpdateDataEventCopyWith(
          _$UpdateDataEvent value, $Res Function(_$UpdateDataEvent) then) =
      __$$UpdateDataEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Request request});

  @override
  $RequestCopyWith<$Res> get request;
}

/// @nodoc
class __$$UpdateDataEventCopyWithImpl<$Res>
    extends _$RescheduleEventCopyWithImpl<$Res, _$UpdateDataEvent>
    implements _$$UpdateDataEventCopyWith<$Res> {
  __$$UpdateDataEventCopyWithImpl(
      _$UpdateDataEvent _value, $Res Function(_$UpdateDataEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_$UpdateDataEvent(
      request: null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as Request,
    ));
  }
}

/// @nodoc

class _$UpdateDataEvent implements UpdateDataEvent {
  const _$UpdateDataEvent({required this.request});

  @override
  final Request request;

  @override
  String toString() {
    return 'RescheduleEvent.updateData(request: $request)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateDataEvent &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateDataEventCopyWith<_$UpdateDataEvent> get copyWith =>
      __$$UpdateDataEventCopyWithImpl<_$UpdateDataEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Request request) getData,
    required TResult Function(Request request) updateData,
  }) {
    return updateData(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Request request)? getData,
    TResult? Function(Request request)? updateData,
  }) {
    return updateData?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Request request)? getData,
    TResult Function(Request request)? updateData,
    required TResult orElse(),
  }) {
    if (updateData != null) {
      return updateData(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetDataEvent value) getData,
    required TResult Function(UpdateDataEvent value) updateData,
  }) {
    return updateData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetDataEvent value)? getData,
    TResult? Function(UpdateDataEvent value)? updateData,
  }) {
    return updateData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetDataEvent value)? getData,
    TResult Function(UpdateDataEvent value)? updateData,
    required TResult orElse(),
  }) {
    if (updateData != null) {
      return updateData(this);
    }
    return orElse();
  }
}

abstract class UpdateDataEvent implements RescheduleEvent {
  const factory UpdateDataEvent({required final Request request}) =
      _$UpdateDataEvent;

  @override
  Request get request;
  @override
  @JsonKey(ignore: true)
  _$$UpdateDataEventCopyWith<_$UpdateDataEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
