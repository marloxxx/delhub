// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'assessment_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AssessmentEvent {
  Kelompok get kelompok => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Kelompok kelompok) getAssesmentPoints,
    required TResult Function(Kelompok kelompok) getAssessmentStudents,
    required TResult Function(
            Kelompok kelompok, List<AssessmentStudent> assessmentStudentList)
        storeAssesmentPoints,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Kelompok kelompok)? getAssesmentPoints,
    TResult? Function(Kelompok kelompok)? getAssessmentStudents,
    TResult? Function(
            Kelompok kelompok, List<AssessmentStudent> assessmentStudentList)?
        storeAssesmentPoints,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Kelompok kelompok)? getAssesmentPoints,
    TResult Function(Kelompok kelompok)? getAssessmentStudents,
    TResult Function(
            Kelompok kelompok, List<AssessmentStudent> assessmentStudentList)?
        storeAssesmentPoints,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAssessmentPoints value) getAssesmentPoints,
    required TResult Function(GetAssessmentStudents value)
        getAssessmentStudents,
    required TResult Function(StoreAssessmentPoints value) storeAssesmentPoints,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAssessmentPoints value)? getAssesmentPoints,
    TResult? Function(GetAssessmentStudents value)? getAssessmentStudents,
    TResult? Function(StoreAssessmentPoints value)? storeAssesmentPoints,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAssessmentPoints value)? getAssesmentPoints,
    TResult Function(GetAssessmentStudents value)? getAssessmentStudents,
    TResult Function(StoreAssessmentPoints value)? storeAssesmentPoints,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AssessmentEventCopyWith<AssessmentEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssessmentEventCopyWith<$Res> {
  factory $AssessmentEventCopyWith(
          AssessmentEvent value, $Res Function(AssessmentEvent) then) =
      _$AssessmentEventCopyWithImpl<$Res, AssessmentEvent>;
  @useResult
  $Res call({Kelompok kelompok});

  $KelompokCopyWith<$Res> get kelompok;
}

/// @nodoc
class _$AssessmentEventCopyWithImpl<$Res, $Val extends AssessmentEvent>
    implements $AssessmentEventCopyWith<$Res> {
  _$AssessmentEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kelompok = null,
  }) {
    return _then(_value.copyWith(
      kelompok: null == kelompok
          ? _value.kelompok
          : kelompok // ignore: cast_nullable_to_non_nullable
              as Kelompok,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $KelompokCopyWith<$Res> get kelompok {
    return $KelompokCopyWith<$Res>(_value.kelompok, (value) {
      return _then(_value.copyWith(kelompok: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GetAssessmentPointsCopyWith<$Res>
    implements $AssessmentEventCopyWith<$Res> {
  factory _$$GetAssessmentPointsCopyWith(_$GetAssessmentPoints value,
          $Res Function(_$GetAssessmentPoints) then) =
      __$$GetAssessmentPointsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Kelompok kelompok});

  @override
  $KelompokCopyWith<$Res> get kelompok;
}

/// @nodoc
class __$$GetAssessmentPointsCopyWithImpl<$Res>
    extends _$AssessmentEventCopyWithImpl<$Res, _$GetAssessmentPoints>
    implements _$$GetAssessmentPointsCopyWith<$Res> {
  __$$GetAssessmentPointsCopyWithImpl(
      _$GetAssessmentPoints _value, $Res Function(_$GetAssessmentPoints) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kelompok = null,
  }) {
    return _then(_$GetAssessmentPoints(
      kelompok: null == kelompok
          ? _value.kelompok
          : kelompok // ignore: cast_nullable_to_non_nullable
              as Kelompok,
    ));
  }
}

/// @nodoc

class _$GetAssessmentPoints implements GetAssessmentPoints {
  const _$GetAssessmentPoints({required this.kelompok});

  @override
  final Kelompok kelompok;

  @override
  String toString() {
    return 'AssessmentEvent.getAssesmentPoints(kelompok: $kelompok)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAssessmentPoints &&
            (identical(other.kelompok, kelompok) ||
                other.kelompok == kelompok));
  }

  @override
  int get hashCode => Object.hash(runtimeType, kelompok);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAssessmentPointsCopyWith<_$GetAssessmentPoints> get copyWith =>
      __$$GetAssessmentPointsCopyWithImpl<_$GetAssessmentPoints>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Kelompok kelompok) getAssesmentPoints,
    required TResult Function(Kelompok kelompok) getAssessmentStudents,
    required TResult Function(
            Kelompok kelompok, List<AssessmentStudent> assessmentStudentList)
        storeAssesmentPoints,
  }) {
    return getAssesmentPoints(kelompok);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Kelompok kelompok)? getAssesmentPoints,
    TResult? Function(Kelompok kelompok)? getAssessmentStudents,
    TResult? Function(
            Kelompok kelompok, List<AssessmentStudent> assessmentStudentList)?
        storeAssesmentPoints,
  }) {
    return getAssesmentPoints?.call(kelompok);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Kelompok kelompok)? getAssesmentPoints,
    TResult Function(Kelompok kelompok)? getAssessmentStudents,
    TResult Function(
            Kelompok kelompok, List<AssessmentStudent> assessmentStudentList)?
        storeAssesmentPoints,
    required TResult orElse(),
  }) {
    if (getAssesmentPoints != null) {
      return getAssesmentPoints(kelompok);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAssessmentPoints value) getAssesmentPoints,
    required TResult Function(GetAssessmentStudents value)
        getAssessmentStudents,
    required TResult Function(StoreAssessmentPoints value) storeAssesmentPoints,
  }) {
    return getAssesmentPoints(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAssessmentPoints value)? getAssesmentPoints,
    TResult? Function(GetAssessmentStudents value)? getAssessmentStudents,
    TResult? Function(StoreAssessmentPoints value)? storeAssesmentPoints,
  }) {
    return getAssesmentPoints?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAssessmentPoints value)? getAssesmentPoints,
    TResult Function(GetAssessmentStudents value)? getAssessmentStudents,
    TResult Function(StoreAssessmentPoints value)? storeAssesmentPoints,
    required TResult orElse(),
  }) {
    if (getAssesmentPoints != null) {
      return getAssesmentPoints(this);
    }
    return orElse();
  }
}

abstract class GetAssessmentPoints implements AssessmentEvent {
  const factory GetAssessmentPoints({required final Kelompok kelompok}) =
      _$GetAssessmentPoints;

  @override
  Kelompok get kelompok;
  @override
  @JsonKey(ignore: true)
  _$$GetAssessmentPointsCopyWith<_$GetAssessmentPoints> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetAssessmentStudentsCopyWith<$Res>
    implements $AssessmentEventCopyWith<$Res> {
  factory _$$GetAssessmentStudentsCopyWith(_$GetAssessmentStudents value,
          $Res Function(_$GetAssessmentStudents) then) =
      __$$GetAssessmentStudentsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Kelompok kelompok});

  @override
  $KelompokCopyWith<$Res> get kelompok;
}

/// @nodoc
class __$$GetAssessmentStudentsCopyWithImpl<$Res>
    extends _$AssessmentEventCopyWithImpl<$Res, _$GetAssessmentStudents>
    implements _$$GetAssessmentStudentsCopyWith<$Res> {
  __$$GetAssessmentStudentsCopyWithImpl(_$GetAssessmentStudents _value,
      $Res Function(_$GetAssessmentStudents) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kelompok = null,
  }) {
    return _then(_$GetAssessmentStudents(
      kelompok: null == kelompok
          ? _value.kelompok
          : kelompok // ignore: cast_nullable_to_non_nullable
              as Kelompok,
    ));
  }
}

/// @nodoc

class _$GetAssessmentStudents implements GetAssessmentStudents {
  const _$GetAssessmentStudents({required this.kelompok});

  @override
  final Kelompok kelompok;

  @override
  String toString() {
    return 'AssessmentEvent.getAssessmentStudents(kelompok: $kelompok)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAssessmentStudents &&
            (identical(other.kelompok, kelompok) ||
                other.kelompok == kelompok));
  }

  @override
  int get hashCode => Object.hash(runtimeType, kelompok);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAssessmentStudentsCopyWith<_$GetAssessmentStudents> get copyWith =>
      __$$GetAssessmentStudentsCopyWithImpl<_$GetAssessmentStudents>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Kelompok kelompok) getAssesmentPoints,
    required TResult Function(Kelompok kelompok) getAssessmentStudents,
    required TResult Function(
            Kelompok kelompok, List<AssessmentStudent> assessmentStudentList)
        storeAssesmentPoints,
  }) {
    return getAssessmentStudents(kelompok);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Kelompok kelompok)? getAssesmentPoints,
    TResult? Function(Kelompok kelompok)? getAssessmentStudents,
    TResult? Function(
            Kelompok kelompok, List<AssessmentStudent> assessmentStudentList)?
        storeAssesmentPoints,
  }) {
    return getAssessmentStudents?.call(kelompok);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Kelompok kelompok)? getAssesmentPoints,
    TResult Function(Kelompok kelompok)? getAssessmentStudents,
    TResult Function(
            Kelompok kelompok, List<AssessmentStudent> assessmentStudentList)?
        storeAssesmentPoints,
    required TResult orElse(),
  }) {
    if (getAssessmentStudents != null) {
      return getAssessmentStudents(kelompok);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAssessmentPoints value) getAssesmentPoints,
    required TResult Function(GetAssessmentStudents value)
        getAssessmentStudents,
    required TResult Function(StoreAssessmentPoints value) storeAssesmentPoints,
  }) {
    return getAssessmentStudents(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAssessmentPoints value)? getAssesmentPoints,
    TResult? Function(GetAssessmentStudents value)? getAssessmentStudents,
    TResult? Function(StoreAssessmentPoints value)? storeAssesmentPoints,
  }) {
    return getAssessmentStudents?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAssessmentPoints value)? getAssesmentPoints,
    TResult Function(GetAssessmentStudents value)? getAssessmentStudents,
    TResult Function(StoreAssessmentPoints value)? storeAssesmentPoints,
    required TResult orElse(),
  }) {
    if (getAssessmentStudents != null) {
      return getAssessmentStudents(this);
    }
    return orElse();
  }
}

abstract class GetAssessmentStudents implements AssessmentEvent {
  const factory GetAssessmentStudents({required final Kelompok kelompok}) =
      _$GetAssessmentStudents;

  @override
  Kelompok get kelompok;
  @override
  @JsonKey(ignore: true)
  _$$GetAssessmentStudentsCopyWith<_$GetAssessmentStudents> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StoreAssessmentPointsCopyWith<$Res>
    implements $AssessmentEventCopyWith<$Res> {
  factory _$$StoreAssessmentPointsCopyWith(_$StoreAssessmentPoints value,
          $Res Function(_$StoreAssessmentPoints) then) =
      __$$StoreAssessmentPointsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Kelompok kelompok, List<AssessmentStudent> assessmentStudentList});

  @override
  $KelompokCopyWith<$Res> get kelompok;
}

/// @nodoc
class __$$StoreAssessmentPointsCopyWithImpl<$Res>
    extends _$AssessmentEventCopyWithImpl<$Res, _$StoreAssessmentPoints>
    implements _$$StoreAssessmentPointsCopyWith<$Res> {
  __$$StoreAssessmentPointsCopyWithImpl(_$StoreAssessmentPoints _value,
      $Res Function(_$StoreAssessmentPoints) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kelompok = null,
    Object? assessmentStudentList = null,
  }) {
    return _then(_$StoreAssessmentPoints(
      kelompok: null == kelompok
          ? _value.kelompok
          : kelompok // ignore: cast_nullable_to_non_nullable
              as Kelompok,
      assessmentStudentList: null == assessmentStudentList
          ? _value._assessmentStudentList
          : assessmentStudentList // ignore: cast_nullable_to_non_nullable
              as List<AssessmentStudent>,
    ));
  }
}

/// @nodoc

class _$StoreAssessmentPoints implements StoreAssessmentPoints {
  const _$StoreAssessmentPoints(
      {required this.kelompok,
      required final List<AssessmentStudent> assessmentStudentList})
      : _assessmentStudentList = assessmentStudentList;

  @override
  final Kelompok kelompok;
  final List<AssessmentStudent> _assessmentStudentList;
  @override
  List<AssessmentStudent> get assessmentStudentList {
    if (_assessmentStudentList is EqualUnmodifiableListView)
      return _assessmentStudentList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_assessmentStudentList);
  }

  @override
  String toString() {
    return 'AssessmentEvent.storeAssesmentPoints(kelompok: $kelompok, assessmentStudentList: $assessmentStudentList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoreAssessmentPoints &&
            (identical(other.kelompok, kelompok) ||
                other.kelompok == kelompok) &&
            const DeepCollectionEquality()
                .equals(other._assessmentStudentList, _assessmentStudentList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, kelompok,
      const DeepCollectionEquality().hash(_assessmentStudentList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StoreAssessmentPointsCopyWith<_$StoreAssessmentPoints> get copyWith =>
      __$$StoreAssessmentPointsCopyWithImpl<_$StoreAssessmentPoints>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Kelompok kelompok) getAssesmentPoints,
    required TResult Function(Kelompok kelompok) getAssessmentStudents,
    required TResult Function(
            Kelompok kelompok, List<AssessmentStudent> assessmentStudentList)
        storeAssesmentPoints,
  }) {
    return storeAssesmentPoints(kelompok, assessmentStudentList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Kelompok kelompok)? getAssesmentPoints,
    TResult? Function(Kelompok kelompok)? getAssessmentStudents,
    TResult? Function(
            Kelompok kelompok, List<AssessmentStudent> assessmentStudentList)?
        storeAssesmentPoints,
  }) {
    return storeAssesmentPoints?.call(kelompok, assessmentStudentList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Kelompok kelompok)? getAssesmentPoints,
    TResult Function(Kelompok kelompok)? getAssessmentStudents,
    TResult Function(
            Kelompok kelompok, List<AssessmentStudent> assessmentStudentList)?
        storeAssesmentPoints,
    required TResult orElse(),
  }) {
    if (storeAssesmentPoints != null) {
      return storeAssesmentPoints(kelompok, assessmentStudentList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAssessmentPoints value) getAssesmentPoints,
    required TResult Function(GetAssessmentStudents value)
        getAssessmentStudents,
    required TResult Function(StoreAssessmentPoints value) storeAssesmentPoints,
  }) {
    return storeAssesmentPoints(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAssessmentPoints value)? getAssesmentPoints,
    TResult? Function(GetAssessmentStudents value)? getAssessmentStudents,
    TResult? Function(StoreAssessmentPoints value)? storeAssesmentPoints,
  }) {
    return storeAssesmentPoints?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAssessmentPoints value)? getAssesmentPoints,
    TResult Function(GetAssessmentStudents value)? getAssessmentStudents,
    TResult Function(StoreAssessmentPoints value)? storeAssesmentPoints,
    required TResult orElse(),
  }) {
    if (storeAssesmentPoints != null) {
      return storeAssesmentPoints(this);
    }
    return orElse();
  }
}

abstract class StoreAssessmentPoints implements AssessmentEvent {
  const factory StoreAssessmentPoints(
          {required final Kelompok kelompok,
          required final List<AssessmentStudent> assessmentStudentList}) =
      _$StoreAssessmentPoints;

  @override
  Kelompok get kelompok;
  List<AssessmentStudent> get assessmentStudentList;
  @override
  @JsonKey(ignore: true)
  _$$StoreAssessmentPointsCopyWith<_$StoreAssessmentPoints> get copyWith =>
      throw _privateConstructorUsedError;
}
