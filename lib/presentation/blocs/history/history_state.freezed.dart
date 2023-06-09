// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'history_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HistoryState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<Request> requestList) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<Request> requestList)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<Request> requestList)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HistoryInitialState value) initial,
    required TResult Function(HistoryLoadingState value) loading,
    required TResult Function(HistoryErrorState value) error,
    required TResult Function(HistoryLoadedState value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HistoryInitialState value)? initial,
    TResult? Function(HistoryLoadingState value)? loading,
    TResult? Function(HistoryErrorState value)? error,
    TResult? Function(HistoryLoadedState value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HistoryInitialState value)? initial,
    TResult Function(HistoryLoadingState value)? loading,
    TResult Function(HistoryErrorState value)? error,
    TResult Function(HistoryLoadedState value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryStateCopyWith<$Res> {
  factory $HistoryStateCopyWith(
          HistoryState value, $Res Function(HistoryState) then) =
      _$HistoryStateCopyWithImpl<$Res, HistoryState>;
}

/// @nodoc
class _$HistoryStateCopyWithImpl<$Res, $Val extends HistoryState>
    implements $HistoryStateCopyWith<$Res> {
  _$HistoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$HistoryInitialStateCopyWith<$Res> {
  factory _$$HistoryInitialStateCopyWith(_$HistoryInitialState value,
          $Res Function(_$HistoryInitialState) then) =
      __$$HistoryInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HistoryInitialStateCopyWithImpl<$Res>
    extends _$HistoryStateCopyWithImpl<$Res, _$HistoryInitialState>
    implements _$$HistoryInitialStateCopyWith<$Res> {
  __$$HistoryInitialStateCopyWithImpl(
      _$HistoryInitialState _value, $Res Function(_$HistoryInitialState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HistoryInitialState implements HistoryInitialState {
  const _$HistoryInitialState();

  @override
  String toString() {
    return 'HistoryState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HistoryInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<Request> requestList) loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<Request> requestList)? loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<Request> requestList)? loaded,
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
    required TResult Function(HistoryInitialState value) initial,
    required TResult Function(HistoryLoadingState value) loading,
    required TResult Function(HistoryErrorState value) error,
    required TResult Function(HistoryLoadedState value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HistoryInitialState value)? initial,
    TResult? Function(HistoryLoadingState value)? loading,
    TResult? Function(HistoryErrorState value)? error,
    TResult? Function(HistoryLoadedState value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HistoryInitialState value)? initial,
    TResult Function(HistoryLoadingState value)? loading,
    TResult Function(HistoryErrorState value)? error,
    TResult Function(HistoryLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class HistoryInitialState implements HistoryState {
  const factory HistoryInitialState() = _$HistoryInitialState;
}

/// @nodoc
abstract class _$$HistoryLoadingStateCopyWith<$Res> {
  factory _$$HistoryLoadingStateCopyWith(_$HistoryLoadingState value,
          $Res Function(_$HistoryLoadingState) then) =
      __$$HistoryLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HistoryLoadingStateCopyWithImpl<$Res>
    extends _$HistoryStateCopyWithImpl<$Res, _$HistoryLoadingState>
    implements _$$HistoryLoadingStateCopyWith<$Res> {
  __$$HistoryLoadingStateCopyWithImpl(
      _$HistoryLoadingState _value, $Res Function(_$HistoryLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HistoryLoadingState implements HistoryLoadingState {
  const _$HistoryLoadingState();

  @override
  String toString() {
    return 'HistoryState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HistoryLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<Request> requestList) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<Request> requestList)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<Request> requestList)? loaded,
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
    required TResult Function(HistoryInitialState value) initial,
    required TResult Function(HistoryLoadingState value) loading,
    required TResult Function(HistoryErrorState value) error,
    required TResult Function(HistoryLoadedState value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HistoryInitialState value)? initial,
    TResult? Function(HistoryLoadingState value)? loading,
    TResult? Function(HistoryErrorState value)? error,
    TResult? Function(HistoryLoadedState value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HistoryInitialState value)? initial,
    TResult Function(HistoryLoadingState value)? loading,
    TResult Function(HistoryErrorState value)? error,
    TResult Function(HistoryLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class HistoryLoadingState implements HistoryState {
  const factory HistoryLoadingState() = _$HistoryLoadingState;
}

/// @nodoc
abstract class _$$HistoryErrorStateCopyWith<$Res> {
  factory _$$HistoryErrorStateCopyWith(
          _$HistoryErrorState value, $Res Function(_$HistoryErrorState) then) =
      __$$HistoryErrorStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$HistoryErrorStateCopyWithImpl<$Res>
    extends _$HistoryStateCopyWithImpl<$Res, _$HistoryErrorState>
    implements _$$HistoryErrorStateCopyWith<$Res> {
  __$$HistoryErrorStateCopyWithImpl(
      _$HistoryErrorState _value, $Res Function(_$HistoryErrorState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$HistoryErrorState(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HistoryErrorState implements HistoryErrorState {
  const _$HistoryErrorState(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'HistoryState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HistoryErrorState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HistoryErrorStateCopyWith<_$HistoryErrorState> get copyWith =>
      __$$HistoryErrorStateCopyWithImpl<_$HistoryErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<Request> requestList) loaded,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<Request> requestList)? loaded,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<Request> requestList)? loaded,
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
    required TResult Function(HistoryInitialState value) initial,
    required TResult Function(HistoryLoadingState value) loading,
    required TResult Function(HistoryErrorState value) error,
    required TResult Function(HistoryLoadedState value) loaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HistoryInitialState value)? initial,
    TResult? Function(HistoryLoadingState value)? loading,
    TResult? Function(HistoryErrorState value)? error,
    TResult? Function(HistoryLoadedState value)? loaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HistoryInitialState value)? initial,
    TResult Function(HistoryLoadingState value)? loading,
    TResult Function(HistoryErrorState value)? error,
    TResult Function(HistoryLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class HistoryErrorState implements HistoryState {
  const factory HistoryErrorState(final String message) = _$HistoryErrorState;

  String get message;
  @JsonKey(ignore: true)
  _$$HistoryErrorStateCopyWith<_$HistoryErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HistoryLoadedStateCopyWith<$Res> {
  factory _$$HistoryLoadedStateCopyWith(_$HistoryLoadedState value,
          $Res Function(_$HistoryLoadedState) then) =
      __$$HistoryLoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Request> requestList});
}

/// @nodoc
class __$$HistoryLoadedStateCopyWithImpl<$Res>
    extends _$HistoryStateCopyWithImpl<$Res, _$HistoryLoadedState>
    implements _$$HistoryLoadedStateCopyWith<$Res> {
  __$$HistoryLoadedStateCopyWithImpl(
      _$HistoryLoadedState _value, $Res Function(_$HistoryLoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestList = null,
  }) {
    return _then(_$HistoryLoadedState(
      requestList: null == requestList
          ? _value._requestList
          : requestList // ignore: cast_nullable_to_non_nullable
              as List<Request>,
    ));
  }
}

/// @nodoc

class _$HistoryLoadedState implements HistoryLoadedState {
  const _$HistoryLoadedState({required final List<Request> requestList})
      : _requestList = requestList;

  final List<Request> _requestList;
  @override
  List<Request> get requestList {
    if (_requestList is EqualUnmodifiableListView) return _requestList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_requestList);
  }

  @override
  String toString() {
    return 'HistoryState.loaded(requestList: $requestList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HistoryLoadedState &&
            const DeepCollectionEquality()
                .equals(other._requestList, _requestList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_requestList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HistoryLoadedStateCopyWith<_$HistoryLoadedState> get copyWith =>
      __$$HistoryLoadedStateCopyWithImpl<_$HistoryLoadedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<Request> requestList) loaded,
  }) {
    return loaded(requestList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<Request> requestList)? loaded,
  }) {
    return loaded?.call(requestList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<Request> requestList)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(requestList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HistoryInitialState value) initial,
    required TResult Function(HistoryLoadingState value) loading,
    required TResult Function(HistoryErrorState value) error,
    required TResult Function(HistoryLoadedState value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HistoryInitialState value)? initial,
    TResult? Function(HistoryLoadingState value)? loading,
    TResult? Function(HistoryErrorState value)? error,
    TResult? Function(HistoryLoadedState value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HistoryInitialState value)? initial,
    TResult Function(HistoryLoadingState value)? loading,
    TResult Function(HistoryErrorState value)? error,
    TResult Function(HistoryLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class HistoryLoadedState implements HistoryState {
  const factory HistoryLoadedState({required final List<Request> requestList}) =
      _$HistoryLoadedState;

  List<Request> get requestList;
  @JsonKey(ignore: true)
  _$$HistoryLoadedStateCopyWith<_$HistoryLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}
