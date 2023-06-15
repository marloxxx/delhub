// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_assessment_student_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DetailAssessmentStudent _$DetailAssessmentStudentFromJson(
    Map<String, dynamic> json) {
  return _DetailAssessmentStudent.fromJson(json);
}

/// @nodoc
mixin _$DetailAssessmentStudent {
  int get id => throw _privateConstructorUsedError;
  AssessmentStudent? get assessmentStudent =>
      throw _privateConstructorUsedError;
  AssessmentComponent? get assessmentComponent =>
      throw _privateConstructorUsedError;
  dynamic get score => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailAssessmentStudentCopyWith<DetailAssessmentStudent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailAssessmentStudentCopyWith<$Res> {
  factory $DetailAssessmentStudentCopyWith(DetailAssessmentStudent value,
          $Res Function(DetailAssessmentStudent) then) =
      _$DetailAssessmentStudentCopyWithImpl<$Res, DetailAssessmentStudent>;
  @useResult
  $Res call(
      {int id,
      AssessmentStudent? assessmentStudent,
      AssessmentComponent? assessmentComponent,
      dynamic score});

  $AssessmentStudentCopyWith<$Res>? get assessmentStudent;
  $AssessmentComponentCopyWith<$Res>? get assessmentComponent;
}

/// @nodoc
class _$DetailAssessmentStudentCopyWithImpl<$Res,
        $Val extends DetailAssessmentStudent>
    implements $DetailAssessmentStudentCopyWith<$Res> {
  _$DetailAssessmentStudentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? assessmentStudent = freezed,
    Object? assessmentComponent = freezed,
    Object? score = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      assessmentStudent: freezed == assessmentStudent
          ? _value.assessmentStudent
          : assessmentStudent // ignore: cast_nullable_to_non_nullable
              as AssessmentStudent?,
      assessmentComponent: freezed == assessmentComponent
          ? _value.assessmentComponent
          : assessmentComponent // ignore: cast_nullable_to_non_nullable
              as AssessmentComponent?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AssessmentStudentCopyWith<$Res>? get assessmentStudent {
    if (_value.assessmentStudent == null) {
      return null;
    }

    return $AssessmentStudentCopyWith<$Res>(_value.assessmentStudent!, (value) {
      return _then(_value.copyWith(assessmentStudent: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AssessmentComponentCopyWith<$Res>? get assessmentComponent {
    if (_value.assessmentComponent == null) {
      return null;
    }

    return $AssessmentComponentCopyWith<$Res>(_value.assessmentComponent!,
        (value) {
      return _then(_value.copyWith(assessmentComponent: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DetailAssessmentStudentCopyWith<$Res>
    implements $DetailAssessmentStudentCopyWith<$Res> {
  factory _$$_DetailAssessmentStudentCopyWith(_$_DetailAssessmentStudent value,
          $Res Function(_$_DetailAssessmentStudent) then) =
      __$$_DetailAssessmentStudentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      AssessmentStudent? assessmentStudent,
      AssessmentComponent? assessmentComponent,
      dynamic score});

  @override
  $AssessmentStudentCopyWith<$Res>? get assessmentStudent;
  @override
  $AssessmentComponentCopyWith<$Res>? get assessmentComponent;
}

/// @nodoc
class __$$_DetailAssessmentStudentCopyWithImpl<$Res>
    extends _$DetailAssessmentStudentCopyWithImpl<$Res,
        _$_DetailAssessmentStudent>
    implements _$$_DetailAssessmentStudentCopyWith<$Res> {
  __$$_DetailAssessmentStudentCopyWithImpl(_$_DetailAssessmentStudent _value,
      $Res Function(_$_DetailAssessmentStudent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? assessmentStudent = freezed,
    Object? assessmentComponent = freezed,
    Object? score = freezed,
  }) {
    return _then(_$_DetailAssessmentStudent(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      assessmentStudent: freezed == assessmentStudent
          ? _value.assessmentStudent
          : assessmentStudent // ignore: cast_nullable_to_non_nullable
              as AssessmentStudent?,
      assessmentComponent: freezed == assessmentComponent
          ? _value.assessmentComponent
          : assessmentComponent // ignore: cast_nullable_to_non_nullable
              as AssessmentComponent?,
      score: freezed == score ? _value.score! : score,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DetailAssessmentStudent implements _DetailAssessmentStudent {
  _$_DetailAssessmentStudent(
      {required this.id,
      this.assessmentStudent,
      this.assessmentComponent,
      this.score = 0});

  factory _$_DetailAssessmentStudent.fromJson(Map<String, dynamic> json) =>
      _$$_DetailAssessmentStudentFromJson(json);

  @override
  final int id;
  @override
  final AssessmentStudent? assessmentStudent;
  @override
  final AssessmentComponent? assessmentComponent;
  @override
  @JsonKey()
  final dynamic score;

  @override
  String toString() {
    return 'DetailAssessmentStudent(id: $id, assessmentStudent: $assessmentStudent, assessmentComponent: $assessmentComponent, score: $score)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DetailAssessmentStudent &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.assessmentStudent, assessmentStudent) ||
                other.assessmentStudent == assessmentStudent) &&
            (identical(other.assessmentComponent, assessmentComponent) ||
                other.assessmentComponent == assessmentComponent) &&
            const DeepCollectionEquality().equals(other.score, score));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, assessmentStudent,
      assessmentComponent, const DeepCollectionEquality().hash(score));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DetailAssessmentStudentCopyWith<_$_DetailAssessmentStudent>
      get copyWith =>
          __$$_DetailAssessmentStudentCopyWithImpl<_$_DetailAssessmentStudent>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DetailAssessmentStudentToJson(
      this,
    );
  }
}

abstract class _DetailAssessmentStudent implements DetailAssessmentStudent {
  factory _DetailAssessmentStudent(
      {required final int id,
      final AssessmentStudent? assessmentStudent,
      final AssessmentComponent? assessmentComponent,
      final dynamic score}) = _$_DetailAssessmentStudent;

  factory _DetailAssessmentStudent.fromJson(Map<String, dynamic> json) =
      _$_DetailAssessmentStudent.fromJson;

  @override
  int get id;
  @override
  AssessmentStudent? get assessmentStudent;
  @override
  AssessmentComponent? get assessmentComponent;
  @override
  dynamic get score;
  @override
  @JsonKey(ignore: true)
  _$$_DetailAssessmentStudentCopyWith<_$_DetailAssessmentStudent>
      get copyWith => throw _privateConstructorUsedError;
}
