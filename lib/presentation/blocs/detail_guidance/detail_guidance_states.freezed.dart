// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_guidance_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DetailGuidanceState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(
            User user, Request request, List<Room> rooms, bool isUpdated)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(
            User user, Request request, List<Room> rooms, bool isUpdated)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(
            User user, Request request, List<Room> rooms, bool isUpdated)?
        loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DetailGuidanceInitialState value) initial,
    required TResult Function(DetailGuidanceLoadingState value) loading,
    required TResult Function(DetailGuidanceErrorState value) error,
    required TResult Function(DetailGuidanceLoadedState value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DetailGuidanceInitialState value)? initial,
    TResult? Function(DetailGuidanceLoadingState value)? loading,
    TResult? Function(DetailGuidanceErrorState value)? error,
    TResult? Function(DetailGuidanceLoadedState value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DetailGuidanceInitialState value)? initial,
    TResult Function(DetailGuidanceLoadingState value)? loading,
    TResult Function(DetailGuidanceErrorState value)? error,
    TResult Function(DetailGuidanceLoadedState value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailGuidanceStateCopyWith<$Res> {
  factory $DetailGuidanceStateCopyWith(
          DetailGuidanceState value, $Res Function(DetailGuidanceState) then) =
      _$DetailGuidanceStateCopyWithImpl<$Res, DetailGuidanceState>;
}

/// @nodoc
class _$DetailGuidanceStateCopyWithImpl<$Res, $Val extends DetailGuidanceState>
    implements $DetailGuidanceStateCopyWith<$Res> {
  _$DetailGuidanceStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DetailGuidanceInitialStateCopyWith<$Res> {
  factory _$$DetailGuidanceInitialStateCopyWith(
          _$DetailGuidanceInitialState value,
          $Res Function(_$DetailGuidanceInitialState) then) =
      __$$DetailGuidanceInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DetailGuidanceInitialStateCopyWithImpl<$Res>
    extends _$DetailGuidanceStateCopyWithImpl<$Res,
        _$DetailGuidanceInitialState>
    implements _$$DetailGuidanceInitialStateCopyWith<$Res> {
  __$$DetailGuidanceInitialStateCopyWithImpl(
      _$DetailGuidanceInitialState _value,
      $Res Function(_$DetailGuidanceInitialState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DetailGuidanceInitialState implements DetailGuidanceInitialState {
  const _$DetailGuidanceInitialState();

  @override
  String toString() {
    return 'DetailGuidanceState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailGuidanceInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(
            User user, Request request, List<Room> rooms, bool isUpdated)
        loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(
            User user, Request request, List<Room> rooms, bool isUpdated)?
        loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(
            User user, Request request, List<Room> rooms, bool isUpdated)?
        loaded,
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
    required TResult Function(DetailGuidanceInitialState value) initial,
    required TResult Function(DetailGuidanceLoadingState value) loading,
    required TResult Function(DetailGuidanceErrorState value) error,
    required TResult Function(DetailGuidanceLoadedState value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DetailGuidanceInitialState value)? initial,
    TResult? Function(DetailGuidanceLoadingState value)? loading,
    TResult? Function(DetailGuidanceErrorState value)? error,
    TResult? Function(DetailGuidanceLoadedState value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DetailGuidanceInitialState value)? initial,
    TResult Function(DetailGuidanceLoadingState value)? loading,
    TResult Function(DetailGuidanceErrorState value)? error,
    TResult Function(DetailGuidanceLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class DetailGuidanceInitialState implements DetailGuidanceState {
  const factory DetailGuidanceInitialState() = _$DetailGuidanceInitialState;
}

/// @nodoc
abstract class _$$DetailGuidanceLoadingStateCopyWith<$Res> {
  factory _$$DetailGuidanceLoadingStateCopyWith(
          _$DetailGuidanceLoadingState value,
          $Res Function(_$DetailGuidanceLoadingState) then) =
      __$$DetailGuidanceLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DetailGuidanceLoadingStateCopyWithImpl<$Res>
    extends _$DetailGuidanceStateCopyWithImpl<$Res,
        _$DetailGuidanceLoadingState>
    implements _$$DetailGuidanceLoadingStateCopyWith<$Res> {
  __$$DetailGuidanceLoadingStateCopyWithImpl(
      _$DetailGuidanceLoadingState _value,
      $Res Function(_$DetailGuidanceLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DetailGuidanceLoadingState implements DetailGuidanceLoadingState {
  const _$DetailGuidanceLoadingState();

  @override
  String toString() {
    return 'DetailGuidanceState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailGuidanceLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(
            User user, Request request, List<Room> rooms, bool isUpdated)
        loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(
            User user, Request request, List<Room> rooms, bool isUpdated)?
        loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(
            User user, Request request, List<Room> rooms, bool isUpdated)?
        loaded,
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
    required TResult Function(DetailGuidanceInitialState value) initial,
    required TResult Function(DetailGuidanceLoadingState value) loading,
    required TResult Function(DetailGuidanceErrorState value) error,
    required TResult Function(DetailGuidanceLoadedState value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DetailGuidanceInitialState value)? initial,
    TResult? Function(DetailGuidanceLoadingState value)? loading,
    TResult? Function(DetailGuidanceErrorState value)? error,
    TResult? Function(DetailGuidanceLoadedState value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DetailGuidanceInitialState value)? initial,
    TResult Function(DetailGuidanceLoadingState value)? loading,
    TResult Function(DetailGuidanceErrorState value)? error,
    TResult Function(DetailGuidanceLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class DetailGuidanceLoadingState implements DetailGuidanceState {
  const factory DetailGuidanceLoadingState() = _$DetailGuidanceLoadingState;
}

/// @nodoc
abstract class _$$DetailGuidanceErrorStateCopyWith<$Res> {
  factory _$$DetailGuidanceErrorStateCopyWith(_$DetailGuidanceErrorState value,
          $Res Function(_$DetailGuidanceErrorState) then) =
      __$$DetailGuidanceErrorStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$DetailGuidanceErrorStateCopyWithImpl<$Res>
    extends _$DetailGuidanceStateCopyWithImpl<$Res, _$DetailGuidanceErrorState>
    implements _$$DetailGuidanceErrorStateCopyWith<$Res> {
  __$$DetailGuidanceErrorStateCopyWithImpl(_$DetailGuidanceErrorState _value,
      $Res Function(_$DetailGuidanceErrorState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$DetailGuidanceErrorState(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DetailGuidanceErrorState implements DetailGuidanceErrorState {
  const _$DetailGuidanceErrorState(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'DetailGuidanceState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailGuidanceErrorState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailGuidanceErrorStateCopyWith<_$DetailGuidanceErrorState>
      get copyWith =>
          __$$DetailGuidanceErrorStateCopyWithImpl<_$DetailGuidanceErrorState>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(
            User user, Request request, List<Room> rooms, bool isUpdated)
        loaded,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(
            User user, Request request, List<Room> rooms, bool isUpdated)?
        loaded,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(
            User user, Request request, List<Room> rooms, bool isUpdated)?
        loaded,
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
    required TResult Function(DetailGuidanceInitialState value) initial,
    required TResult Function(DetailGuidanceLoadingState value) loading,
    required TResult Function(DetailGuidanceErrorState value) error,
    required TResult Function(DetailGuidanceLoadedState value) loaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DetailGuidanceInitialState value)? initial,
    TResult? Function(DetailGuidanceLoadingState value)? loading,
    TResult? Function(DetailGuidanceErrorState value)? error,
    TResult? Function(DetailGuidanceLoadedState value)? loaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DetailGuidanceInitialState value)? initial,
    TResult Function(DetailGuidanceLoadingState value)? loading,
    TResult Function(DetailGuidanceErrorState value)? error,
    TResult Function(DetailGuidanceLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class DetailGuidanceErrorState implements DetailGuidanceState {
  const factory DetailGuidanceErrorState(final String message) =
      _$DetailGuidanceErrorState;

  String get message;
  @JsonKey(ignore: true)
  _$$DetailGuidanceErrorStateCopyWith<_$DetailGuidanceErrorState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DetailGuidanceLoadedStateCopyWith<$Res> {
  factory _$$DetailGuidanceLoadedStateCopyWith(
          _$DetailGuidanceLoadedState value,
          $Res Function(_$DetailGuidanceLoadedState) then) =
      __$$DetailGuidanceLoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({User user, Request request, List<Room> rooms, bool isUpdated});

  $UserCopyWith<$Res> get user;
  $RequestCopyWith<$Res> get request;
}

/// @nodoc
class __$$DetailGuidanceLoadedStateCopyWithImpl<$Res>
    extends _$DetailGuidanceStateCopyWithImpl<$Res, _$DetailGuidanceLoadedState>
    implements _$$DetailGuidanceLoadedStateCopyWith<$Res> {
  __$$DetailGuidanceLoadedStateCopyWithImpl(_$DetailGuidanceLoadedState _value,
      $Res Function(_$DetailGuidanceLoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? request = null,
    Object? rooms = null,
    Object? isUpdated = null,
  }) {
    return _then(_$DetailGuidanceLoadedState(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      request: null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as Request,
      rooms: null == rooms
          ? _value._rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as List<Room>,
      isUpdated: null == isUpdated
          ? _value.isUpdated
          : isUpdated // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
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

class _$DetailGuidanceLoadedState implements DetailGuidanceLoadedState {
  const _$DetailGuidanceLoadedState(
      {required this.user,
      required this.request,
      required final List<Room> rooms,
      required this.isUpdated})
      : _rooms = rooms;

  @override
  final User user;
  @override
  final Request request;
  final List<Room> _rooms;
  @override
  List<Room> get rooms {
    if (_rooms is EqualUnmodifiableListView) return _rooms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rooms);
  }

  @override
  final bool isUpdated;

  @override
  String toString() {
    return 'DetailGuidanceState.loaded(user: $user, request: $request, rooms: $rooms, isUpdated: $isUpdated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailGuidanceLoadedState &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.request, request) || other.request == request) &&
            const DeepCollectionEquality().equals(other._rooms, _rooms) &&
            (identical(other.isUpdated, isUpdated) ||
                other.isUpdated == isUpdated));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, request,
      const DeepCollectionEquality().hash(_rooms), isUpdated);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailGuidanceLoadedStateCopyWith<_$DetailGuidanceLoadedState>
      get copyWith => __$$DetailGuidanceLoadedStateCopyWithImpl<
          _$DetailGuidanceLoadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(
            User user, Request request, List<Room> rooms, bool isUpdated)
        loaded,
  }) {
    return loaded(user, request, rooms, isUpdated);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(
            User user, Request request, List<Room> rooms, bool isUpdated)?
        loaded,
  }) {
    return loaded?.call(user, request, rooms, isUpdated);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(
            User user, Request request, List<Room> rooms, bool isUpdated)?
        loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(user, request, rooms, isUpdated);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DetailGuidanceInitialState value) initial,
    required TResult Function(DetailGuidanceLoadingState value) loading,
    required TResult Function(DetailGuidanceErrorState value) error,
    required TResult Function(DetailGuidanceLoadedState value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DetailGuidanceInitialState value)? initial,
    TResult? Function(DetailGuidanceLoadingState value)? loading,
    TResult? Function(DetailGuidanceErrorState value)? error,
    TResult? Function(DetailGuidanceLoadedState value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DetailGuidanceInitialState value)? initial,
    TResult Function(DetailGuidanceLoadingState value)? loading,
    TResult Function(DetailGuidanceErrorState value)? error,
    TResult Function(DetailGuidanceLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class DetailGuidanceLoadedState implements DetailGuidanceState {
  const factory DetailGuidanceLoadedState(
      {required final User user,
      required final Request request,
      required final List<Room> rooms,
      required final bool isUpdated}) = _$DetailGuidanceLoadedState;

  User get user;
  Request get request;
  List<Room> get rooms;
  bool get isUpdated;
  @JsonKey(ignore: true)
  _$$DetailGuidanceLoadedStateCopyWith<_$DetailGuidanceLoadedState>
      get copyWith => throw _privateConstructorUsedError;
}
