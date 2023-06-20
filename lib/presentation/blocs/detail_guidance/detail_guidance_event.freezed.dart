// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_guidance_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DetailGuidanceEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Request request) getData,
    required TResult Function(Request request, DroppedFile? file) updateData,
    required TResult Function() resetState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Request request)? getData,
    TResult? Function(Request request, DroppedFile? file)? updateData,
    TResult? Function()? resetState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Request request)? getData,
    TResult Function(Request request, DroppedFile? file)? updateData,
    TResult Function()? resetState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetDataEvent value) getData,
    required TResult Function(UpdateDataEvent value) updateData,
    required TResult Function(ResetStateEvent value) resetState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetDataEvent value)? getData,
    TResult? Function(UpdateDataEvent value)? updateData,
    TResult? Function(ResetStateEvent value)? resetState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetDataEvent value)? getData,
    TResult Function(UpdateDataEvent value)? updateData,
    TResult Function(ResetStateEvent value)? resetState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailGuidanceEventCopyWith<$Res> {
  factory $DetailGuidanceEventCopyWith(
          DetailGuidanceEvent value, $Res Function(DetailGuidanceEvent) then) =
      _$DetailGuidanceEventCopyWithImpl<$Res, DetailGuidanceEvent>;
}

/// @nodoc
class _$DetailGuidanceEventCopyWithImpl<$Res, $Val extends DetailGuidanceEvent>
    implements $DetailGuidanceEventCopyWith<$Res> {
  _$DetailGuidanceEventCopyWithImpl(this._value, this._then);

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
  @useResult
  $Res call({Request request});

  $RequestCopyWith<$Res> get request;
}

/// @nodoc
class __$$GetDataEventCopyWithImpl<$Res>
    extends _$DetailGuidanceEventCopyWithImpl<$Res, _$GetDataEvent>
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

  @override
  @pragma('vm:prefer-inline')
  $RequestCopyWith<$Res> get request {
    return $RequestCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }
}

/// @nodoc

class _$GetDataEvent implements GetDataEvent {
  const _$GetDataEvent({required this.request});

  @override
  final Request request;

  @override
  String toString() {
    return 'DetailGuidanceEvent.getData(request: $request)';
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
    required TResult Function(Request request, DroppedFile? file) updateData,
    required TResult Function() resetState,
  }) {
    return getData(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Request request)? getData,
    TResult? Function(Request request, DroppedFile? file)? updateData,
    TResult? Function()? resetState,
  }) {
    return getData?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Request request)? getData,
    TResult Function(Request request, DroppedFile? file)? updateData,
    TResult Function()? resetState,
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
    required TResult Function(ResetStateEvent value) resetState,
  }) {
    return getData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetDataEvent value)? getData,
    TResult? Function(UpdateDataEvent value)? updateData,
    TResult? Function(ResetStateEvent value)? resetState,
  }) {
    return getData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetDataEvent value)? getData,
    TResult Function(UpdateDataEvent value)? updateData,
    TResult Function(ResetStateEvent value)? resetState,
    required TResult orElse(),
  }) {
    if (getData != null) {
      return getData(this);
    }
    return orElse();
  }
}

abstract class GetDataEvent implements DetailGuidanceEvent {
  const factory GetDataEvent({required final Request request}) = _$GetDataEvent;

  Request get request;
  @JsonKey(ignore: true)
  _$$GetDataEventCopyWith<_$GetDataEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateDataEventCopyWith<$Res> {
  factory _$$UpdateDataEventCopyWith(
          _$UpdateDataEvent value, $Res Function(_$UpdateDataEvent) then) =
      __$$UpdateDataEventCopyWithImpl<$Res>;
  @useResult
  $Res call({Request request, DroppedFile? file});

  $RequestCopyWith<$Res> get request;
  $DroppedFileCopyWith<$Res>? get file;
}

/// @nodoc
class __$$UpdateDataEventCopyWithImpl<$Res>
    extends _$DetailGuidanceEventCopyWithImpl<$Res, _$UpdateDataEvent>
    implements _$$UpdateDataEventCopyWith<$Res> {
  __$$UpdateDataEventCopyWithImpl(
      _$UpdateDataEvent _value, $Res Function(_$UpdateDataEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
    Object? file = freezed,
  }) {
    return _then(_$UpdateDataEvent(
      request: null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as Request,
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as DroppedFile?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $RequestCopyWith<$Res> get request {
    return $RequestCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DroppedFileCopyWith<$Res>? get file {
    if (_value.file == null) {
      return null;
    }

    return $DroppedFileCopyWith<$Res>(_value.file!, (value) {
      return _then(_value.copyWith(file: value));
    });
  }
}

/// @nodoc

class _$UpdateDataEvent implements UpdateDataEvent {
  const _$UpdateDataEvent({required this.request, required this.file});

  @override
  final Request request;
  @override
  final DroppedFile? file;

  @override
  String toString() {
    return 'DetailGuidanceEvent.updateData(request: $request, file: $file)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateDataEvent &&
            (identical(other.request, request) || other.request == request) &&
            (identical(other.file, file) || other.file == file));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request, file);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateDataEventCopyWith<_$UpdateDataEvent> get copyWith =>
      __$$UpdateDataEventCopyWithImpl<_$UpdateDataEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Request request) getData,
    required TResult Function(Request request, DroppedFile? file) updateData,
    required TResult Function() resetState,
  }) {
    return updateData(request, file);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Request request)? getData,
    TResult? Function(Request request, DroppedFile? file)? updateData,
    TResult? Function()? resetState,
  }) {
    return updateData?.call(request, file);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Request request)? getData,
    TResult Function(Request request, DroppedFile? file)? updateData,
    TResult Function()? resetState,
    required TResult orElse(),
  }) {
    if (updateData != null) {
      return updateData(request, file);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetDataEvent value) getData,
    required TResult Function(UpdateDataEvent value) updateData,
    required TResult Function(ResetStateEvent value) resetState,
  }) {
    return updateData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetDataEvent value)? getData,
    TResult? Function(UpdateDataEvent value)? updateData,
    TResult? Function(ResetStateEvent value)? resetState,
  }) {
    return updateData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetDataEvent value)? getData,
    TResult Function(UpdateDataEvent value)? updateData,
    TResult Function(ResetStateEvent value)? resetState,
    required TResult orElse(),
  }) {
    if (updateData != null) {
      return updateData(this);
    }
    return orElse();
  }
}

abstract class UpdateDataEvent implements DetailGuidanceEvent {
  const factory UpdateDataEvent(
      {required final Request request,
      required final DroppedFile? file}) = _$UpdateDataEvent;

  Request get request;
  DroppedFile? get file;
  @JsonKey(ignore: true)
  _$$UpdateDataEventCopyWith<_$UpdateDataEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResetStateEventCopyWith<$Res> {
  factory _$$ResetStateEventCopyWith(
          _$ResetStateEvent value, $Res Function(_$ResetStateEvent) then) =
      __$$ResetStateEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetStateEventCopyWithImpl<$Res>
    extends _$DetailGuidanceEventCopyWithImpl<$Res, _$ResetStateEvent>
    implements _$$ResetStateEventCopyWith<$Res> {
  __$$ResetStateEventCopyWithImpl(
      _$ResetStateEvent _value, $Res Function(_$ResetStateEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResetStateEvent implements ResetStateEvent {
  const _$ResetStateEvent();

  @override
  String toString() {
    return 'DetailGuidanceEvent.resetState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResetStateEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Request request) getData,
    required TResult Function(Request request, DroppedFile? file) updateData,
    required TResult Function() resetState,
  }) {
    return resetState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Request request)? getData,
    TResult? Function(Request request, DroppedFile? file)? updateData,
    TResult? Function()? resetState,
  }) {
    return resetState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Request request)? getData,
    TResult Function(Request request, DroppedFile? file)? updateData,
    TResult Function()? resetState,
    required TResult orElse(),
  }) {
    if (resetState != null) {
      return resetState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetDataEvent value) getData,
    required TResult Function(UpdateDataEvent value) updateData,
    required TResult Function(ResetStateEvent value) resetState,
  }) {
    return resetState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetDataEvent value)? getData,
    TResult? Function(UpdateDataEvent value)? updateData,
    TResult? Function(ResetStateEvent value)? resetState,
  }) {
    return resetState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetDataEvent value)? getData,
    TResult Function(UpdateDataEvent value)? updateData,
    TResult Function(ResetStateEvent value)? resetState,
    required TResult orElse(),
  }) {
    if (resetState != null) {
      return resetState(this);
    }
    return orElse();
  }
}

abstract class ResetStateEvent implements DetailGuidanceEvent {
  const factory ResetStateEvent() = _$ResetStateEvent;
}
