// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'status_upload_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StatusUploadState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(Request request, bool isUpdated) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(Request request, bool isUpdated)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(Request request, bool isUpdated)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StatusUploadInitialState value) initial,
    required TResult Function(StatusUploadLoadingState value) loading,
    required TResult Function(StatusUploadErrorState value) error,
    required TResult Function(StatusUploadLoadedState value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StatusUploadInitialState value)? initial,
    TResult? Function(StatusUploadLoadingState value)? loading,
    TResult? Function(StatusUploadErrorState value)? error,
    TResult? Function(StatusUploadLoadedState value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StatusUploadInitialState value)? initial,
    TResult Function(StatusUploadLoadingState value)? loading,
    TResult Function(StatusUploadErrorState value)? error,
    TResult Function(StatusUploadLoadedState value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatusUploadStateCopyWith<$Res> {
  factory $StatusUploadStateCopyWith(
          StatusUploadState value, $Res Function(StatusUploadState) then) =
      _$StatusUploadStateCopyWithImpl<$Res, StatusUploadState>;
}

/// @nodoc
class _$StatusUploadStateCopyWithImpl<$Res, $Val extends StatusUploadState>
    implements $StatusUploadStateCopyWith<$Res> {
  _$StatusUploadStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StatusUploadInitialStateCopyWith<$Res> {
  factory _$$StatusUploadInitialStateCopyWith(_$StatusUploadInitialState value,
          $Res Function(_$StatusUploadInitialState) then) =
      __$$StatusUploadInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StatusUploadInitialStateCopyWithImpl<$Res>
    extends _$StatusUploadStateCopyWithImpl<$Res, _$StatusUploadInitialState>
    implements _$$StatusUploadInitialStateCopyWith<$Res> {
  __$$StatusUploadInitialStateCopyWithImpl(_$StatusUploadInitialState _value,
      $Res Function(_$StatusUploadInitialState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StatusUploadInitialState implements StatusUploadInitialState {
  const _$StatusUploadInitialState();

  @override
  String toString() {
    return 'StatusUploadState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatusUploadInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(Request request, bool isUpdated) loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(Request request, bool isUpdated)? loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(Request request, bool isUpdated)? loaded,
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
    required TResult Function(StatusUploadInitialState value) initial,
    required TResult Function(StatusUploadLoadingState value) loading,
    required TResult Function(StatusUploadErrorState value) error,
    required TResult Function(StatusUploadLoadedState value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StatusUploadInitialState value)? initial,
    TResult? Function(StatusUploadLoadingState value)? loading,
    TResult? Function(StatusUploadErrorState value)? error,
    TResult? Function(StatusUploadLoadedState value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StatusUploadInitialState value)? initial,
    TResult Function(StatusUploadLoadingState value)? loading,
    TResult Function(StatusUploadErrorState value)? error,
    TResult Function(StatusUploadLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class StatusUploadInitialState implements StatusUploadState {
  const factory StatusUploadInitialState() = _$StatusUploadInitialState;
}

/// @nodoc
abstract class _$$StatusUploadLoadingStateCopyWith<$Res> {
  factory _$$StatusUploadLoadingStateCopyWith(_$StatusUploadLoadingState value,
          $Res Function(_$StatusUploadLoadingState) then) =
      __$$StatusUploadLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StatusUploadLoadingStateCopyWithImpl<$Res>
    extends _$StatusUploadStateCopyWithImpl<$Res, _$StatusUploadLoadingState>
    implements _$$StatusUploadLoadingStateCopyWith<$Res> {
  __$$StatusUploadLoadingStateCopyWithImpl(_$StatusUploadLoadingState _value,
      $Res Function(_$StatusUploadLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StatusUploadLoadingState implements StatusUploadLoadingState {
  const _$StatusUploadLoadingState();

  @override
  String toString() {
    return 'StatusUploadState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatusUploadLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(Request request, bool isUpdated) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(Request request, bool isUpdated)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(Request request, bool isUpdated)? loaded,
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
    required TResult Function(StatusUploadInitialState value) initial,
    required TResult Function(StatusUploadLoadingState value) loading,
    required TResult Function(StatusUploadErrorState value) error,
    required TResult Function(StatusUploadLoadedState value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StatusUploadInitialState value)? initial,
    TResult? Function(StatusUploadLoadingState value)? loading,
    TResult? Function(StatusUploadErrorState value)? error,
    TResult? Function(StatusUploadLoadedState value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StatusUploadInitialState value)? initial,
    TResult Function(StatusUploadLoadingState value)? loading,
    TResult Function(StatusUploadErrorState value)? error,
    TResult Function(StatusUploadLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class StatusUploadLoadingState implements StatusUploadState {
  const factory StatusUploadLoadingState() = _$StatusUploadLoadingState;
}

/// @nodoc
abstract class _$$StatusUploadErrorStateCopyWith<$Res> {
  factory _$$StatusUploadErrorStateCopyWith(_$StatusUploadErrorState value,
          $Res Function(_$StatusUploadErrorState) then) =
      __$$StatusUploadErrorStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$StatusUploadErrorStateCopyWithImpl<$Res>
    extends _$StatusUploadStateCopyWithImpl<$Res, _$StatusUploadErrorState>
    implements _$$StatusUploadErrorStateCopyWith<$Res> {
  __$$StatusUploadErrorStateCopyWithImpl(_$StatusUploadErrorState _value,
      $Res Function(_$StatusUploadErrorState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$StatusUploadErrorState(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StatusUploadErrorState implements StatusUploadErrorState {
  const _$StatusUploadErrorState(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'StatusUploadState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatusUploadErrorState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StatusUploadErrorStateCopyWith<_$StatusUploadErrorState> get copyWith =>
      __$$StatusUploadErrorStateCopyWithImpl<_$StatusUploadErrorState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(Request request, bool isUpdated) loaded,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(Request request, bool isUpdated)? loaded,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(Request request, bool isUpdated)? loaded,
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
    required TResult Function(StatusUploadInitialState value) initial,
    required TResult Function(StatusUploadLoadingState value) loading,
    required TResult Function(StatusUploadErrorState value) error,
    required TResult Function(StatusUploadLoadedState value) loaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StatusUploadInitialState value)? initial,
    TResult? Function(StatusUploadLoadingState value)? loading,
    TResult? Function(StatusUploadErrorState value)? error,
    TResult? Function(StatusUploadLoadedState value)? loaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StatusUploadInitialState value)? initial,
    TResult Function(StatusUploadLoadingState value)? loading,
    TResult Function(StatusUploadErrorState value)? error,
    TResult Function(StatusUploadLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class StatusUploadErrorState implements StatusUploadState {
  const factory StatusUploadErrorState(final String message) =
      _$StatusUploadErrorState;

  String get message;
  @JsonKey(ignore: true)
  _$$StatusUploadErrorStateCopyWith<_$StatusUploadErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StatusUploadLoadedStateCopyWith<$Res> {
  factory _$$StatusUploadLoadedStateCopyWith(_$StatusUploadLoadedState value,
          $Res Function(_$StatusUploadLoadedState) then) =
      __$$StatusUploadLoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({Request request, bool isUpdated});

  $RequestCopyWith<$Res> get request;
}

/// @nodoc
class __$$StatusUploadLoadedStateCopyWithImpl<$Res>
    extends _$StatusUploadStateCopyWithImpl<$Res, _$StatusUploadLoadedState>
    implements _$$StatusUploadLoadedStateCopyWith<$Res> {
  __$$StatusUploadLoadedStateCopyWithImpl(_$StatusUploadLoadedState _value,
      $Res Function(_$StatusUploadLoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
    Object? isUpdated = null,
  }) {
    return _then(_$StatusUploadLoadedState(
      request: null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as Request,
      isUpdated: null == isUpdated
          ? _value.isUpdated
          : isUpdated // ignore: cast_nullable_to_non_nullable
              as bool,
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

class _$StatusUploadLoadedState implements StatusUploadLoadedState {
  const _$StatusUploadLoadedState(
      {required this.request, required this.isUpdated});

  @override
  final Request request;
  @override
  final bool isUpdated;

  @override
  String toString() {
    return 'StatusUploadState.loaded(request: $request, isUpdated: $isUpdated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatusUploadLoadedState &&
            (identical(other.request, request) || other.request == request) &&
            (identical(other.isUpdated, isUpdated) ||
                other.isUpdated == isUpdated));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request, isUpdated);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StatusUploadLoadedStateCopyWith<_$StatusUploadLoadedState> get copyWith =>
      __$$StatusUploadLoadedStateCopyWithImpl<_$StatusUploadLoadedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(Request request, bool isUpdated) loaded,
  }) {
    return loaded(request, isUpdated);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(Request request, bool isUpdated)? loaded,
  }) {
    return loaded?.call(request, isUpdated);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(Request request, bool isUpdated)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(request, isUpdated);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StatusUploadInitialState value) initial,
    required TResult Function(StatusUploadLoadingState value) loading,
    required TResult Function(StatusUploadErrorState value) error,
    required TResult Function(StatusUploadLoadedState value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StatusUploadInitialState value)? initial,
    TResult? Function(StatusUploadLoadingState value)? loading,
    TResult? Function(StatusUploadErrorState value)? error,
    TResult? Function(StatusUploadLoadedState value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StatusUploadInitialState value)? initial,
    TResult Function(StatusUploadLoadingState value)? loading,
    TResult Function(StatusUploadErrorState value)? error,
    TResult Function(StatusUploadLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class StatusUploadLoadedState implements StatusUploadState {
  const factory StatusUploadLoadedState(
      {required final Request request,
      required final bool isUpdated}) = _$StatusUploadLoadedState;

  Request get request;
  bool get isUpdated;
  @JsonKey(ignore: true)
  _$$StatusUploadLoadedStateCopyWith<_$StatusUploadLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}
