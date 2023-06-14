// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RequestState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<Room> rooms, bool success) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<Room> rooms, bool success)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<Room> rooms, bool success)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RequestInitialState value) initial,
    required TResult Function(RequestLoadingState value) loading,
    required TResult Function(RequestErrorState value) error,
    required TResult Function(RequestLoadedState value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RequestInitialState value)? initial,
    TResult? Function(RequestLoadingState value)? loading,
    TResult? Function(RequestErrorState value)? error,
    TResult? Function(RequestLoadedState value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestInitialState value)? initial,
    TResult Function(RequestLoadingState value)? loading,
    TResult Function(RequestErrorState value)? error,
    TResult Function(RequestLoadedState value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestStateCopyWith<$Res> {
  factory $RequestStateCopyWith(
          RequestState value, $Res Function(RequestState) then) =
      _$RequestStateCopyWithImpl<$Res, RequestState>;
}

/// @nodoc
class _$RequestStateCopyWithImpl<$Res, $Val extends RequestState>
    implements $RequestStateCopyWith<$Res> {
  _$RequestStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RequestInitialStateCopyWith<$Res> {
  factory _$$RequestInitialStateCopyWith(_$RequestInitialState value,
          $Res Function(_$RequestInitialState) then) =
      __$$RequestInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RequestInitialStateCopyWithImpl<$Res>
    extends _$RequestStateCopyWithImpl<$Res, _$RequestInitialState>
    implements _$$RequestInitialStateCopyWith<$Res> {
  __$$RequestInitialStateCopyWithImpl(
      _$RequestInitialState _value, $Res Function(_$RequestInitialState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RequestInitialState implements RequestInitialState {
  const _$RequestInitialState();

  @override
  String toString() {
    return 'RequestState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RequestInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<Room> rooms, bool success) loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<Room> rooms, bool success)? loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<Room> rooms, bool success)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RequestInitialState value) initial,
    required TResult Function(RequestLoadingState value) loading,
    required TResult Function(RequestErrorState value) error,
    required TResult Function(RequestLoadedState value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RequestInitialState value)? initial,
    TResult? Function(RequestLoadingState value)? loading,
    TResult? Function(RequestErrorState value)? error,
    TResult? Function(RequestLoadedState value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestInitialState value)? initial,
    TResult Function(RequestLoadingState value)? loading,
    TResult Function(RequestErrorState value)? error,
    TResult Function(RequestLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class RequestInitialState implements RequestState {
  const factory RequestInitialState() = _$RequestInitialState;
}

/// @nodoc
abstract class _$$RequestLoadingStateCopyWith<$Res> {
  factory _$$RequestLoadingStateCopyWith(_$RequestLoadingState value,
          $Res Function(_$RequestLoadingState) then) =
      __$$RequestLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RequestLoadingStateCopyWithImpl<$Res>
    extends _$RequestStateCopyWithImpl<$Res, _$RequestLoadingState>
    implements _$$RequestLoadingStateCopyWith<$Res> {
  __$$RequestLoadingStateCopyWithImpl(
      _$RequestLoadingState _value, $Res Function(_$RequestLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RequestLoadingState implements RequestLoadingState {
  const _$RequestLoadingState();

  @override
  String toString() {
    return 'RequestState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RequestLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<Room> rooms, bool success) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<Room> rooms, bool success)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<Room> rooms, bool success)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RequestInitialState value) initial,
    required TResult Function(RequestLoadingState value) loading,
    required TResult Function(RequestErrorState value) error,
    required TResult Function(RequestLoadedState value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RequestInitialState value)? initial,
    TResult? Function(RequestLoadingState value)? loading,
    TResult? Function(RequestErrorState value)? error,
    TResult? Function(RequestLoadedState value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestInitialState value)? initial,
    TResult Function(RequestLoadingState value)? loading,
    TResult Function(RequestErrorState value)? error,
    TResult Function(RequestLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class RequestLoadingState implements RequestState {
  const factory RequestLoadingState() = _$RequestLoadingState;
}

/// @nodoc
abstract class _$$RequestErrorStateCopyWith<$Res> {
  factory _$$RequestErrorStateCopyWith(
          _$RequestErrorState value, $Res Function(_$RequestErrorState) then) =
      __$$RequestErrorStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$RequestErrorStateCopyWithImpl<$Res>
    extends _$RequestStateCopyWithImpl<$Res, _$RequestErrorState>
    implements _$$RequestErrorStateCopyWith<$Res> {
  __$$RequestErrorStateCopyWithImpl(
      _$RequestErrorState _value, $Res Function(_$RequestErrorState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$RequestErrorState(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RequestErrorState implements RequestErrorState {
  const _$RequestErrorState(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'RequestState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestErrorState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestErrorStateCopyWith<_$RequestErrorState> get copyWith =>
      __$$RequestErrorStateCopyWithImpl<_$RequestErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<Room> rooms, bool success) loaded,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<Room> rooms, bool success)? loaded,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<Room> rooms, bool success)? loaded,
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
    required TResult Function(RequestInitialState value) initial,
    required TResult Function(RequestLoadingState value) loading,
    required TResult Function(RequestErrorState value) error,
    required TResult Function(RequestLoadedState value) loaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RequestInitialState value)? initial,
    TResult? Function(RequestLoadingState value)? loading,
    TResult? Function(RequestErrorState value)? error,
    TResult? Function(RequestLoadedState value)? loaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestInitialState value)? initial,
    TResult Function(RequestLoadingState value)? loading,
    TResult Function(RequestErrorState value)? error,
    TResult Function(RequestLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class RequestErrorState implements RequestState {
  const factory RequestErrorState(final String message) = _$RequestErrorState;

  String get message;
  @JsonKey(ignore: true)
  _$$RequestErrorStateCopyWith<_$RequestErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RequestLoadedStateCopyWith<$Res> {
  factory _$$RequestLoadedStateCopyWith(_$RequestLoadedState value,
          $Res Function(_$RequestLoadedState) then) =
      __$$RequestLoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Room> rooms, bool success});
}

/// @nodoc
class __$$RequestLoadedStateCopyWithImpl<$Res>
    extends _$RequestStateCopyWithImpl<$Res, _$RequestLoadedState>
    implements _$$RequestLoadedStateCopyWith<$Res> {
  __$$RequestLoadedStateCopyWithImpl(
      _$RequestLoadedState _value, $Res Function(_$RequestLoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rooms = null,
    Object? success = null,
  }) {
    return _then(_$RequestLoadedState(
      rooms: null == rooms
          ? _value._rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as List<Room>,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$RequestLoadedState implements RequestLoadedState {
  const _$RequestLoadedState(
      {required final List<Room> rooms, required this.success})
      : _rooms = rooms;

  final List<Room> _rooms;
  @override
  List<Room> get rooms {
    if (_rooms is EqualUnmodifiableListView) return _rooms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rooms);
  }

  @override
  final bool success;

  @override
  String toString() {
    return 'RequestState.loaded(rooms: $rooms, success: $success)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestLoadedState &&
            const DeepCollectionEquality().equals(other._rooms, _rooms) &&
            (identical(other.success, success) || other.success == success));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_rooms), success);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestLoadedStateCopyWith<_$RequestLoadedState> get copyWith =>
      __$$RequestLoadedStateCopyWithImpl<_$RequestLoadedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<Room> rooms, bool success) loaded,
  }) {
    return loaded(rooms, success);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<Room> rooms, bool success)? loaded,
  }) {
    return loaded?.call(rooms, success);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<Room> rooms, bool success)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(rooms, success);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RequestInitialState value) initial,
    required TResult Function(RequestLoadingState value) loading,
    required TResult Function(RequestErrorState value) error,
    required TResult Function(RequestLoadedState value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RequestInitialState value)? initial,
    TResult? Function(RequestLoadingState value)? loading,
    TResult? Function(RequestErrorState value)? error,
    TResult? Function(RequestLoadedState value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestInitialState value)? initial,
    TResult Function(RequestLoadingState value)? loading,
    TResult Function(RequestErrorState value)? error,
    TResult Function(RequestLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class RequestLoadedState implements RequestState {
  const factory RequestLoadedState(
      {required final List<Room> rooms,
      required final bool success}) = _$RequestLoadedState;

  List<Room> get rooms;
  bool get success;
  @JsonKey(ignore: true)
  _$$RequestLoadedStateCopyWith<_$RequestLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}
