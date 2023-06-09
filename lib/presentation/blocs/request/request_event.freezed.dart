// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RequestEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getRooms,
    required TResult Function(Request request) requesting,
    required TResult Function() requested,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getRooms,
    TResult? Function(Request request)? requesting,
    TResult? Function()? requested,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getRooms,
    TResult Function(Request request)? requesting,
    TResult Function()? requested,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetRoomsEvent value) getRooms,
    required TResult Function(RequestingEvent value) requesting,
    required TResult Function(RequestedEvent value) requested,
    required TResult Function(RequestErrorEvent value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetRoomsEvent value)? getRooms,
    TResult? Function(RequestingEvent value)? requesting,
    TResult? Function(RequestedEvent value)? requested,
    TResult? Function(RequestErrorEvent value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetRoomsEvent value)? getRooms,
    TResult Function(RequestingEvent value)? requesting,
    TResult Function(RequestedEvent value)? requested,
    TResult Function(RequestErrorEvent value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestEventCopyWith<$Res> {
  factory $RequestEventCopyWith(
          RequestEvent value, $Res Function(RequestEvent) then) =
      _$RequestEventCopyWithImpl<$Res, RequestEvent>;
}

/// @nodoc
class _$RequestEventCopyWithImpl<$Res, $Val extends RequestEvent>
    implements $RequestEventCopyWith<$Res> {
  _$RequestEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetRoomsEventCopyWith<$Res> {
  factory _$$GetRoomsEventCopyWith(
          _$GetRoomsEvent value, $Res Function(_$GetRoomsEvent) then) =
      __$$GetRoomsEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetRoomsEventCopyWithImpl<$Res>
    extends _$RequestEventCopyWithImpl<$Res, _$GetRoomsEvent>
    implements _$$GetRoomsEventCopyWith<$Res> {
  __$$GetRoomsEventCopyWithImpl(
      _$GetRoomsEvent _value, $Res Function(_$GetRoomsEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetRoomsEvent implements GetRoomsEvent {
  const _$GetRoomsEvent();

  @override
  String toString() {
    return 'RequestEvent.getRooms()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetRoomsEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getRooms,
    required TResult Function(Request request) requesting,
    required TResult Function() requested,
    required TResult Function(String message) error,
  }) {
    return getRooms();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getRooms,
    TResult? Function(Request request)? requesting,
    TResult? Function()? requested,
    TResult? Function(String message)? error,
  }) {
    return getRooms?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getRooms,
    TResult Function(Request request)? requesting,
    TResult Function()? requested,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (getRooms != null) {
      return getRooms();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetRoomsEvent value) getRooms,
    required TResult Function(RequestingEvent value) requesting,
    required TResult Function(RequestedEvent value) requested,
    required TResult Function(RequestErrorEvent value) error,
  }) {
    return getRooms(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetRoomsEvent value)? getRooms,
    TResult? Function(RequestingEvent value)? requesting,
    TResult? Function(RequestedEvent value)? requested,
    TResult? Function(RequestErrorEvent value)? error,
  }) {
    return getRooms?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetRoomsEvent value)? getRooms,
    TResult Function(RequestingEvent value)? requesting,
    TResult Function(RequestedEvent value)? requested,
    TResult Function(RequestErrorEvent value)? error,
    required TResult orElse(),
  }) {
    if (getRooms != null) {
      return getRooms(this);
    }
    return orElse();
  }
}

abstract class GetRoomsEvent implements RequestEvent {
  const factory GetRoomsEvent() = _$GetRoomsEvent;
}

/// @nodoc
abstract class _$$RequestingEventCopyWith<$Res> {
  factory _$$RequestingEventCopyWith(
          _$RequestingEvent value, $Res Function(_$RequestingEvent) then) =
      __$$RequestingEventCopyWithImpl<$Res>;
  @useResult
  $Res call({Request request});

  $RequestCopyWith<$Res> get request;
}

/// @nodoc
class __$$RequestingEventCopyWithImpl<$Res>
    extends _$RequestEventCopyWithImpl<$Res, _$RequestingEvent>
    implements _$$RequestingEventCopyWith<$Res> {
  __$$RequestingEventCopyWithImpl(
      _$RequestingEvent _value, $Res Function(_$RequestingEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_$RequestingEvent(
      request: null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as Request,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $RequestCopyWith<$Res> get request {
    return $RequestCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }
}

/// @nodoc

class _$RequestingEvent implements RequestingEvent {
  const _$RequestingEvent({required this.request});

  @override
  final Request request;

  @override
  String toString() {
    return 'RequestEvent.requesting(request: $request)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestingEvent &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestingEventCopyWith<_$RequestingEvent> get copyWith =>
      __$$RequestingEventCopyWithImpl<_$RequestingEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getRooms,
    required TResult Function(Request request) requesting,
    required TResult Function() requested,
    required TResult Function(String message) error,
  }) {
    return requesting(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getRooms,
    TResult? Function(Request request)? requesting,
    TResult? Function()? requested,
    TResult? Function(String message)? error,
  }) {
    return requesting?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getRooms,
    TResult Function(Request request)? requesting,
    TResult Function()? requested,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (requesting != null) {
      return requesting(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetRoomsEvent value) getRooms,
    required TResult Function(RequestingEvent value) requesting,
    required TResult Function(RequestedEvent value) requested,
    required TResult Function(RequestErrorEvent value) error,
  }) {
    return requesting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetRoomsEvent value)? getRooms,
    TResult? Function(RequestingEvent value)? requesting,
    TResult? Function(RequestedEvent value)? requested,
    TResult? Function(RequestErrorEvent value)? error,
  }) {
    return requesting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetRoomsEvent value)? getRooms,
    TResult Function(RequestingEvent value)? requesting,
    TResult Function(RequestedEvent value)? requested,
    TResult Function(RequestErrorEvent value)? error,
    required TResult orElse(),
  }) {
    if (requesting != null) {
      return requesting(this);
    }
    return orElse();
  }
}

abstract class RequestingEvent implements RequestEvent {
  const factory RequestingEvent({required final Request request}) =
      _$RequestingEvent;

  Request get request;
  @JsonKey(ignore: true)
  _$$RequestingEventCopyWith<_$RequestingEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RequestedEventCopyWith<$Res> {
  factory _$$RequestedEventCopyWith(
          _$RequestedEvent value, $Res Function(_$RequestedEvent) then) =
      __$$RequestedEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RequestedEventCopyWithImpl<$Res>
    extends _$RequestEventCopyWithImpl<$Res, _$RequestedEvent>
    implements _$$RequestedEventCopyWith<$Res> {
  __$$RequestedEventCopyWithImpl(
      _$RequestedEvent _value, $Res Function(_$RequestedEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RequestedEvent implements RequestedEvent {
  const _$RequestedEvent();

  @override
  String toString() {
    return 'RequestEvent.requested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RequestedEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getRooms,
    required TResult Function(Request request) requesting,
    required TResult Function() requested,
    required TResult Function(String message) error,
  }) {
    return requested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getRooms,
    TResult? Function(Request request)? requesting,
    TResult? Function()? requested,
    TResult? Function(String message)? error,
  }) {
    return requested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getRooms,
    TResult Function(Request request)? requesting,
    TResult Function()? requested,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (requested != null) {
      return requested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetRoomsEvent value) getRooms,
    required TResult Function(RequestingEvent value) requesting,
    required TResult Function(RequestedEvent value) requested,
    required TResult Function(RequestErrorEvent value) error,
  }) {
    return requested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetRoomsEvent value)? getRooms,
    TResult? Function(RequestingEvent value)? requesting,
    TResult? Function(RequestedEvent value)? requested,
    TResult? Function(RequestErrorEvent value)? error,
  }) {
    return requested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetRoomsEvent value)? getRooms,
    TResult Function(RequestingEvent value)? requesting,
    TResult Function(RequestedEvent value)? requested,
    TResult Function(RequestErrorEvent value)? error,
    required TResult orElse(),
  }) {
    if (requested != null) {
      return requested(this);
    }
    return orElse();
  }
}

abstract class RequestedEvent implements RequestEvent {
  const factory RequestedEvent() = _$RequestedEvent;
}

/// @nodoc
abstract class _$$RequestErrorEventCopyWith<$Res> {
  factory _$$RequestErrorEventCopyWith(
          _$RequestErrorEvent value, $Res Function(_$RequestErrorEvent) then) =
      __$$RequestErrorEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$RequestErrorEventCopyWithImpl<$Res>
    extends _$RequestEventCopyWithImpl<$Res, _$RequestErrorEvent>
    implements _$$RequestErrorEventCopyWith<$Res> {
  __$$RequestErrorEventCopyWithImpl(
      _$RequestErrorEvent _value, $Res Function(_$RequestErrorEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$RequestErrorEvent(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RequestErrorEvent implements RequestErrorEvent {
  const _$RequestErrorEvent(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'RequestEvent.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestErrorEvent &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestErrorEventCopyWith<_$RequestErrorEvent> get copyWith =>
      __$$RequestErrorEventCopyWithImpl<_$RequestErrorEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getRooms,
    required TResult Function(Request request) requesting,
    required TResult Function() requested,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getRooms,
    TResult? Function(Request request)? requesting,
    TResult? Function()? requested,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getRooms,
    TResult Function(Request request)? requesting,
    TResult Function()? requested,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetRoomsEvent value) getRooms,
    required TResult Function(RequestingEvent value) requesting,
    required TResult Function(RequestedEvent value) requested,
    required TResult Function(RequestErrorEvent value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetRoomsEvent value)? getRooms,
    TResult? Function(RequestingEvent value)? requesting,
    TResult? Function(RequestedEvent value)? requested,
    TResult? Function(RequestErrorEvent value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetRoomsEvent value)? getRooms,
    TResult Function(RequestingEvent value)? requesting,
    TResult Function(RequestedEvent value)? requested,
    TResult Function(RequestErrorEvent value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class RequestErrorEvent implements RequestEvent {
  const factory RequestErrorEvent(final String message) = _$RequestErrorEvent;

  String get message;
  @JsonKey(ignore: true)
  _$$RequestErrorEventCopyWith<_$RequestErrorEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
