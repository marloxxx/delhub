// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'group_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GroupState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<Kelompok> groupList) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<Kelompok> groupList)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<Kelompok> groupList)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GroupInitialState value) initial,
    required TResult Function(GroupLoadingState value) loading,
    required TResult Function(GroupErrorState value) error,
    required TResult Function(GroupLoadedState value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GroupInitialState value)? initial,
    TResult? Function(GroupLoadingState value)? loading,
    TResult? Function(GroupErrorState value)? error,
    TResult? Function(GroupLoadedState value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GroupInitialState value)? initial,
    TResult Function(GroupLoadingState value)? loading,
    TResult Function(GroupErrorState value)? error,
    TResult Function(GroupLoadedState value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupStateCopyWith<$Res> {
  factory $GroupStateCopyWith(
          GroupState value, $Res Function(GroupState) then) =
      _$GroupStateCopyWithImpl<$Res, GroupState>;
}

/// @nodoc
class _$GroupStateCopyWithImpl<$Res, $Val extends GroupState>
    implements $GroupStateCopyWith<$Res> {
  _$GroupStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GroupInitialStateCopyWith<$Res> {
  factory _$$GroupInitialStateCopyWith(
          _$GroupInitialState value, $Res Function(_$GroupInitialState) then) =
      __$$GroupInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GroupInitialStateCopyWithImpl<$Res>
    extends _$GroupStateCopyWithImpl<$Res, _$GroupInitialState>
    implements _$$GroupInitialStateCopyWith<$Res> {
  __$$GroupInitialStateCopyWithImpl(
      _$GroupInitialState _value, $Res Function(_$GroupInitialState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GroupInitialState implements GroupInitialState {
  const _$GroupInitialState();

  @override
  String toString() {
    return 'GroupState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GroupInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<Kelompok> groupList) loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<Kelompok> groupList)? loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<Kelompok> groupList)? loaded,
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
    required TResult Function(GroupInitialState value) initial,
    required TResult Function(GroupLoadingState value) loading,
    required TResult Function(GroupErrorState value) error,
    required TResult Function(GroupLoadedState value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GroupInitialState value)? initial,
    TResult? Function(GroupLoadingState value)? loading,
    TResult? Function(GroupErrorState value)? error,
    TResult? Function(GroupLoadedState value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GroupInitialState value)? initial,
    TResult Function(GroupLoadingState value)? loading,
    TResult Function(GroupErrorState value)? error,
    TResult Function(GroupLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class GroupInitialState implements GroupState {
  const factory GroupInitialState() = _$GroupInitialState;
}

/// @nodoc
abstract class _$$GroupLoadingStateCopyWith<$Res> {
  factory _$$GroupLoadingStateCopyWith(
          _$GroupLoadingState value, $Res Function(_$GroupLoadingState) then) =
      __$$GroupLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GroupLoadingStateCopyWithImpl<$Res>
    extends _$GroupStateCopyWithImpl<$Res, _$GroupLoadingState>
    implements _$$GroupLoadingStateCopyWith<$Res> {
  __$$GroupLoadingStateCopyWithImpl(
      _$GroupLoadingState _value, $Res Function(_$GroupLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GroupLoadingState implements GroupLoadingState {
  const _$GroupLoadingState();

  @override
  String toString() {
    return 'GroupState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GroupLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<Kelompok> groupList) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<Kelompok> groupList)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<Kelompok> groupList)? loaded,
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
    required TResult Function(GroupInitialState value) initial,
    required TResult Function(GroupLoadingState value) loading,
    required TResult Function(GroupErrorState value) error,
    required TResult Function(GroupLoadedState value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GroupInitialState value)? initial,
    TResult? Function(GroupLoadingState value)? loading,
    TResult? Function(GroupErrorState value)? error,
    TResult? Function(GroupLoadedState value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GroupInitialState value)? initial,
    TResult Function(GroupLoadingState value)? loading,
    TResult Function(GroupErrorState value)? error,
    TResult Function(GroupLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class GroupLoadingState implements GroupState {
  const factory GroupLoadingState() = _$GroupLoadingState;
}

/// @nodoc
abstract class _$$GroupErrorStateCopyWith<$Res> {
  factory _$$GroupErrorStateCopyWith(
          _$GroupErrorState value, $Res Function(_$GroupErrorState) then) =
      __$$GroupErrorStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$GroupErrorStateCopyWithImpl<$Res>
    extends _$GroupStateCopyWithImpl<$Res, _$GroupErrorState>
    implements _$$GroupErrorStateCopyWith<$Res> {
  __$$GroupErrorStateCopyWithImpl(
      _$GroupErrorState _value, $Res Function(_$GroupErrorState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$GroupErrorState(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GroupErrorState implements GroupErrorState {
  const _$GroupErrorState({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'GroupState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupErrorState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupErrorStateCopyWith<_$GroupErrorState> get copyWith =>
      __$$GroupErrorStateCopyWithImpl<_$GroupErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<Kelompok> groupList) loaded,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<Kelompok> groupList)? loaded,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<Kelompok> groupList)? loaded,
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
    required TResult Function(GroupInitialState value) initial,
    required TResult Function(GroupLoadingState value) loading,
    required TResult Function(GroupErrorState value) error,
    required TResult Function(GroupLoadedState value) loaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GroupInitialState value)? initial,
    TResult? Function(GroupLoadingState value)? loading,
    TResult? Function(GroupErrorState value)? error,
    TResult? Function(GroupLoadedState value)? loaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GroupInitialState value)? initial,
    TResult Function(GroupLoadingState value)? loading,
    TResult Function(GroupErrorState value)? error,
    TResult Function(GroupLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GroupErrorState implements GroupState {
  const factory GroupErrorState({required final String message}) =
      _$GroupErrorState;

  String get message;
  @JsonKey(ignore: true)
  _$$GroupErrorStateCopyWith<_$GroupErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GroupLoadedStateCopyWith<$Res> {
  factory _$$GroupLoadedStateCopyWith(
          _$GroupLoadedState value, $Res Function(_$GroupLoadedState) then) =
      __$$GroupLoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Kelompok> groupList});
}

/// @nodoc
class __$$GroupLoadedStateCopyWithImpl<$Res>
    extends _$GroupStateCopyWithImpl<$Res, _$GroupLoadedState>
    implements _$$GroupLoadedStateCopyWith<$Res> {
  __$$GroupLoadedStateCopyWithImpl(
      _$GroupLoadedState _value, $Res Function(_$GroupLoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupList = null,
  }) {
    return _then(_$GroupLoadedState(
      groupList: null == groupList
          ? _value._groupList
          : groupList // ignore: cast_nullable_to_non_nullable
              as List<Kelompok>,
    ));
  }
}

/// @nodoc

class _$GroupLoadedState implements GroupLoadedState {
  const _$GroupLoadedState({required final List<Kelompok> groupList})
      : _groupList = groupList;

  final List<Kelompok> _groupList;
  @override
  List<Kelompok> get groupList {
    if (_groupList is EqualUnmodifiableListView) return _groupList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_groupList);
  }

  @override
  String toString() {
    return 'GroupState.loaded(groupList: $groupList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupLoadedState &&
            const DeepCollectionEquality()
                .equals(other._groupList, _groupList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_groupList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupLoadedStateCopyWith<_$GroupLoadedState> get copyWith =>
      __$$GroupLoadedStateCopyWithImpl<_$GroupLoadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<Kelompok> groupList) loaded,
  }) {
    return loaded(groupList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<Kelompok> groupList)? loaded,
  }) {
    return loaded?.call(groupList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<Kelompok> groupList)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(groupList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GroupInitialState value) initial,
    required TResult Function(GroupLoadingState value) loading,
    required TResult Function(GroupErrorState value) error,
    required TResult Function(GroupLoadedState value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GroupInitialState value)? initial,
    TResult? Function(GroupLoadingState value)? loading,
    TResult? Function(GroupErrorState value)? error,
    TResult? Function(GroupLoadedState value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GroupInitialState value)? initial,
    TResult Function(GroupLoadingState value)? loading,
    TResult Function(GroupErrorState value)? error,
    TResult Function(GroupLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class GroupLoadedState implements GroupState {
  const factory GroupLoadedState({required final List<Kelompok> groupList}) =
      _$GroupLoadedState;

  List<Kelompok> get groupList;
  @JsonKey(ignore: true)
  _$$GroupLoadedStateCopyWith<_$GroupLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}
