// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'assessment_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AssessmentStates {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<AssessmentPoint> assessmentPointList,
            List<AssessmentStudent> assessmentStudentList, bool isUpdated)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<AssessmentPoint> assessmentPointList,
            List<AssessmentStudent> assessmentStudentList, bool isUpdated)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<AssessmentPoint> assessmentPointList,
            List<AssessmentStudent> assessmentStudentList, bool isUpdated)?
        loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AssessmentInitialState value) initial,
    required TResult Function(AssessmentLoadingState value) loading,
    required TResult Function(AssessmentErrorState value) error,
    required TResult Function(AssessmentLoadedState value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AssessmentInitialState value)? initial,
    TResult? Function(AssessmentLoadingState value)? loading,
    TResult? Function(AssessmentErrorState value)? error,
    TResult? Function(AssessmentLoadedState value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AssessmentInitialState value)? initial,
    TResult Function(AssessmentLoadingState value)? loading,
    TResult Function(AssessmentErrorState value)? error,
    TResult Function(AssessmentLoadedState value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssessmentStatesCopyWith<$Res> {
  factory $AssessmentStatesCopyWith(
          AssessmentStates value, $Res Function(AssessmentStates) then) =
      _$AssessmentStatesCopyWithImpl<$Res, AssessmentStates>;
}

/// @nodoc
class _$AssessmentStatesCopyWithImpl<$Res, $Val extends AssessmentStates>
    implements $AssessmentStatesCopyWith<$Res> {
  _$AssessmentStatesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AssessmentInitialStateCopyWith<$Res> {
  factory _$$AssessmentInitialStateCopyWith(_$AssessmentInitialState value,
          $Res Function(_$AssessmentInitialState) then) =
      __$$AssessmentInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AssessmentInitialStateCopyWithImpl<$Res>
    extends _$AssessmentStatesCopyWithImpl<$Res, _$AssessmentInitialState>
    implements _$$AssessmentInitialStateCopyWith<$Res> {
  __$$AssessmentInitialStateCopyWithImpl(_$AssessmentInitialState _value,
      $Res Function(_$AssessmentInitialState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AssessmentInitialState implements AssessmentInitialState {
  const _$AssessmentInitialState();

  @override
  String toString() {
    return 'AssessmentStates.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AssessmentInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<AssessmentPoint> assessmentPointList,
            List<AssessmentStudent> assessmentStudentList, bool isUpdated)
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
    TResult? Function(List<AssessmentPoint> assessmentPointList,
            List<AssessmentStudent> assessmentStudentList, bool isUpdated)?
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
    TResult Function(List<AssessmentPoint> assessmentPointList,
            List<AssessmentStudent> assessmentStudentList, bool isUpdated)?
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
    required TResult Function(AssessmentInitialState value) initial,
    required TResult Function(AssessmentLoadingState value) loading,
    required TResult Function(AssessmentErrorState value) error,
    required TResult Function(AssessmentLoadedState value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AssessmentInitialState value)? initial,
    TResult? Function(AssessmentLoadingState value)? loading,
    TResult? Function(AssessmentErrorState value)? error,
    TResult? Function(AssessmentLoadedState value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AssessmentInitialState value)? initial,
    TResult Function(AssessmentLoadingState value)? loading,
    TResult Function(AssessmentErrorState value)? error,
    TResult Function(AssessmentLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class AssessmentInitialState implements AssessmentStates {
  const factory AssessmentInitialState() = _$AssessmentInitialState;
}

/// @nodoc
abstract class _$$AssessmentLoadingStateCopyWith<$Res> {
  factory _$$AssessmentLoadingStateCopyWith(_$AssessmentLoadingState value,
          $Res Function(_$AssessmentLoadingState) then) =
      __$$AssessmentLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AssessmentLoadingStateCopyWithImpl<$Res>
    extends _$AssessmentStatesCopyWithImpl<$Res, _$AssessmentLoadingState>
    implements _$$AssessmentLoadingStateCopyWith<$Res> {
  __$$AssessmentLoadingStateCopyWithImpl(_$AssessmentLoadingState _value,
      $Res Function(_$AssessmentLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AssessmentLoadingState implements AssessmentLoadingState {
  const _$AssessmentLoadingState();

  @override
  String toString() {
    return 'AssessmentStates.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AssessmentLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<AssessmentPoint> assessmentPointList,
            List<AssessmentStudent> assessmentStudentList, bool isUpdated)
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
    TResult? Function(List<AssessmentPoint> assessmentPointList,
            List<AssessmentStudent> assessmentStudentList, bool isUpdated)?
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
    TResult Function(List<AssessmentPoint> assessmentPointList,
            List<AssessmentStudent> assessmentStudentList, bool isUpdated)?
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
    required TResult Function(AssessmentInitialState value) initial,
    required TResult Function(AssessmentLoadingState value) loading,
    required TResult Function(AssessmentErrorState value) error,
    required TResult Function(AssessmentLoadedState value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AssessmentInitialState value)? initial,
    TResult? Function(AssessmentLoadingState value)? loading,
    TResult? Function(AssessmentErrorState value)? error,
    TResult? Function(AssessmentLoadedState value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AssessmentInitialState value)? initial,
    TResult Function(AssessmentLoadingState value)? loading,
    TResult Function(AssessmentErrorState value)? error,
    TResult Function(AssessmentLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AssessmentLoadingState implements AssessmentStates {
  const factory AssessmentLoadingState() = _$AssessmentLoadingState;
}

/// @nodoc
abstract class _$$AssessmentErrorStateCopyWith<$Res> {
  factory _$$AssessmentErrorStateCopyWith(_$AssessmentErrorState value,
          $Res Function(_$AssessmentErrorState) then) =
      __$$AssessmentErrorStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$AssessmentErrorStateCopyWithImpl<$Res>
    extends _$AssessmentStatesCopyWithImpl<$Res, _$AssessmentErrorState>
    implements _$$AssessmentErrorStateCopyWith<$Res> {
  __$$AssessmentErrorStateCopyWithImpl(_$AssessmentErrorState _value,
      $Res Function(_$AssessmentErrorState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$AssessmentErrorState(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AssessmentErrorState implements AssessmentErrorState {
  const _$AssessmentErrorState(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AssessmentStates.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssessmentErrorState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AssessmentErrorStateCopyWith<_$AssessmentErrorState> get copyWith =>
      __$$AssessmentErrorStateCopyWithImpl<_$AssessmentErrorState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<AssessmentPoint> assessmentPointList,
            List<AssessmentStudent> assessmentStudentList, bool isUpdated)
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
    TResult? Function(List<AssessmentPoint> assessmentPointList,
            List<AssessmentStudent> assessmentStudentList, bool isUpdated)?
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
    TResult Function(List<AssessmentPoint> assessmentPointList,
            List<AssessmentStudent> assessmentStudentList, bool isUpdated)?
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
    required TResult Function(AssessmentInitialState value) initial,
    required TResult Function(AssessmentLoadingState value) loading,
    required TResult Function(AssessmentErrorState value) error,
    required TResult Function(AssessmentLoadedState value) loaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AssessmentInitialState value)? initial,
    TResult? Function(AssessmentLoadingState value)? loading,
    TResult? Function(AssessmentErrorState value)? error,
    TResult? Function(AssessmentLoadedState value)? loaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AssessmentInitialState value)? initial,
    TResult Function(AssessmentLoadingState value)? loading,
    TResult Function(AssessmentErrorState value)? error,
    TResult Function(AssessmentLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AssessmentErrorState implements AssessmentStates {
  const factory AssessmentErrorState(final String message) =
      _$AssessmentErrorState;

  String get message;
  @JsonKey(ignore: true)
  _$$AssessmentErrorStateCopyWith<_$AssessmentErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AssessmentLoadedStateCopyWith<$Res> {
  factory _$$AssessmentLoadedStateCopyWith(_$AssessmentLoadedState value,
          $Res Function(_$AssessmentLoadedState) then) =
      __$$AssessmentLoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<AssessmentPoint> assessmentPointList,
      List<AssessmentStudent> assessmentStudentList,
      bool isUpdated});
}

/// @nodoc
class __$$AssessmentLoadedStateCopyWithImpl<$Res>
    extends _$AssessmentStatesCopyWithImpl<$Res, _$AssessmentLoadedState>
    implements _$$AssessmentLoadedStateCopyWith<$Res> {
  __$$AssessmentLoadedStateCopyWithImpl(_$AssessmentLoadedState _value,
      $Res Function(_$AssessmentLoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? assessmentPointList = null,
    Object? assessmentStudentList = null,
    Object? isUpdated = null,
  }) {
    return _then(_$AssessmentLoadedState(
      assessmentPointList: null == assessmentPointList
          ? _value._assessmentPointList
          : assessmentPointList // ignore: cast_nullable_to_non_nullable
              as List<AssessmentPoint>,
      assessmentStudentList: null == assessmentStudentList
          ? _value._assessmentStudentList
          : assessmentStudentList // ignore: cast_nullable_to_non_nullable
              as List<AssessmentStudent>,
      isUpdated: null == isUpdated
          ? _value.isUpdated
          : isUpdated // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AssessmentLoadedState implements AssessmentLoadedState {
  const _$AssessmentLoadedState(
      {required final List<AssessmentPoint> assessmentPointList,
      required final List<AssessmentStudent> assessmentStudentList,
      required this.isUpdated})
      : _assessmentPointList = assessmentPointList,
        _assessmentStudentList = assessmentStudentList;

  final List<AssessmentPoint> _assessmentPointList;
  @override
  List<AssessmentPoint> get assessmentPointList {
    if (_assessmentPointList is EqualUnmodifiableListView)
      return _assessmentPointList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_assessmentPointList);
  }

  final List<AssessmentStudent> _assessmentStudentList;
  @override
  List<AssessmentStudent> get assessmentStudentList {
    if (_assessmentStudentList is EqualUnmodifiableListView)
      return _assessmentStudentList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_assessmentStudentList);
  }

  @override
  final bool isUpdated;

  @override
  String toString() {
    return 'AssessmentStates.loaded(assessmentPointList: $assessmentPointList, assessmentStudentList: $assessmentStudentList, isUpdated: $isUpdated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssessmentLoadedState &&
            const DeepCollectionEquality()
                .equals(other._assessmentPointList, _assessmentPointList) &&
            const DeepCollectionEquality()
                .equals(other._assessmentStudentList, _assessmentStudentList) &&
            (identical(other.isUpdated, isUpdated) ||
                other.isUpdated == isUpdated));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_assessmentPointList),
      const DeepCollectionEquality().hash(_assessmentStudentList),
      isUpdated);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AssessmentLoadedStateCopyWith<_$AssessmentLoadedState> get copyWith =>
      __$$AssessmentLoadedStateCopyWithImpl<_$AssessmentLoadedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<AssessmentPoint> assessmentPointList,
            List<AssessmentStudent> assessmentStudentList, bool isUpdated)
        loaded,
  }) {
    return loaded(assessmentPointList, assessmentStudentList, isUpdated);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<AssessmentPoint> assessmentPointList,
            List<AssessmentStudent> assessmentStudentList, bool isUpdated)?
        loaded,
  }) {
    return loaded?.call(assessmentPointList, assessmentStudentList, isUpdated);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<AssessmentPoint> assessmentPointList,
            List<AssessmentStudent> assessmentStudentList, bool isUpdated)?
        loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(assessmentPointList, assessmentStudentList, isUpdated);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AssessmentInitialState value) initial,
    required TResult Function(AssessmentLoadingState value) loading,
    required TResult Function(AssessmentErrorState value) error,
    required TResult Function(AssessmentLoadedState value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AssessmentInitialState value)? initial,
    TResult? Function(AssessmentLoadingState value)? loading,
    TResult? Function(AssessmentErrorState value)? error,
    TResult? Function(AssessmentLoadedState value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AssessmentInitialState value)? initial,
    TResult Function(AssessmentLoadingState value)? loading,
    TResult Function(AssessmentErrorState value)? error,
    TResult Function(AssessmentLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class AssessmentLoadedState implements AssessmentStates {
  const factory AssessmentLoadedState(
      {required final List<AssessmentPoint> assessmentPointList,
      required final List<AssessmentStudent> assessmentStudentList,
      required final bool isUpdated}) = _$AssessmentLoadedState;

  List<AssessmentPoint> get assessmentPointList;
  List<AssessmentStudent> get assessmentStudentList;
  bool get isUpdated;
  @JsonKey(ignore: true)
  _$$AssessmentLoadedStateCopyWith<_$AssessmentLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}
