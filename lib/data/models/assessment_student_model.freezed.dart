// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'assessment_student_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AssessmentStudent _$AssessmentStudentFromJson(Map<String, dynamic> json) {
  return _AssessmentStudent.fromJson(json);
}

/// @nodoc
mixin _$AssessmentStudent {
  int get id => throw _privateConstructorUsedError;
  Kelompok get kelompok => throw _privateConstructorUsedError;
  AssessmentPoint get assessmentPoint => throw _privateConstructorUsedError;
  int get score => throw _privateConstructorUsedError;
  Mahasiswa get mahasiswa => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  List<DetailAssessmentStudent>? get detailAssessmentStudent =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AssessmentStudentCopyWith<AssessmentStudent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssessmentStudentCopyWith<$Res> {
  factory $AssessmentStudentCopyWith(
          AssessmentStudent value, $Res Function(AssessmentStudent) then) =
      _$AssessmentStudentCopyWithImpl<$Res, AssessmentStudent>;
  @useResult
  $Res call(
      {int id,
      Kelompok kelompok,
      AssessmentPoint assessmentPoint,
      int score,
      Mahasiswa mahasiswa,
      String status,
      List<DetailAssessmentStudent>? detailAssessmentStudent});

  $KelompokCopyWith<$Res> get kelompok;
  $AssessmentPointCopyWith<$Res> get assessmentPoint;
  $MahasiswaCopyWith<$Res> get mahasiswa;
}

/// @nodoc
class _$AssessmentStudentCopyWithImpl<$Res, $Val extends AssessmentStudent>
    implements $AssessmentStudentCopyWith<$Res> {
  _$AssessmentStudentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? kelompok = null,
    Object? assessmentPoint = null,
    Object? score = null,
    Object? mahasiswa = null,
    Object? status = null,
    Object? detailAssessmentStudent = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      kelompok: null == kelompok
          ? _value.kelompok
          : kelompok // ignore: cast_nullable_to_non_nullable
              as Kelompok,
      assessmentPoint: null == assessmentPoint
          ? _value.assessmentPoint
          : assessmentPoint // ignore: cast_nullable_to_non_nullable
              as AssessmentPoint,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      mahasiswa: null == mahasiswa
          ? _value.mahasiswa
          : mahasiswa // ignore: cast_nullable_to_non_nullable
              as Mahasiswa,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      detailAssessmentStudent: freezed == detailAssessmentStudent
          ? _value.detailAssessmentStudent
          : detailAssessmentStudent // ignore: cast_nullable_to_non_nullable
              as List<DetailAssessmentStudent>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $KelompokCopyWith<$Res> get kelompok {
    return $KelompokCopyWith<$Res>(_value.kelompok, (value) {
      return _then(_value.copyWith(kelompok: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AssessmentPointCopyWith<$Res> get assessmentPoint {
    return $AssessmentPointCopyWith<$Res>(_value.assessmentPoint, (value) {
      return _then(_value.copyWith(assessmentPoint: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MahasiswaCopyWith<$Res> get mahasiswa {
    return $MahasiswaCopyWith<$Res>(_value.mahasiswa, (value) {
      return _then(_value.copyWith(mahasiswa: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AssessmentStudentCopyWith<$Res>
    implements $AssessmentStudentCopyWith<$Res> {
  factory _$$_AssessmentStudentCopyWith(_$_AssessmentStudent value,
          $Res Function(_$_AssessmentStudent) then) =
      __$$_AssessmentStudentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      Kelompok kelompok,
      AssessmentPoint assessmentPoint,
      int score,
      Mahasiswa mahasiswa,
      String status,
      List<DetailAssessmentStudent>? detailAssessmentStudent});

  @override
  $KelompokCopyWith<$Res> get kelompok;
  @override
  $AssessmentPointCopyWith<$Res> get assessmentPoint;
  @override
  $MahasiswaCopyWith<$Res> get mahasiswa;
}

/// @nodoc
class __$$_AssessmentStudentCopyWithImpl<$Res>
    extends _$AssessmentStudentCopyWithImpl<$Res, _$_AssessmentStudent>
    implements _$$_AssessmentStudentCopyWith<$Res> {
  __$$_AssessmentStudentCopyWithImpl(
      _$_AssessmentStudent _value, $Res Function(_$_AssessmentStudent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? kelompok = null,
    Object? assessmentPoint = null,
    Object? score = null,
    Object? mahasiswa = null,
    Object? status = null,
    Object? detailAssessmentStudent = freezed,
  }) {
    return _then(_$_AssessmentStudent(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      kelompok: null == kelompok
          ? _value.kelompok
          : kelompok // ignore: cast_nullable_to_non_nullable
              as Kelompok,
      assessmentPoint: null == assessmentPoint
          ? _value.assessmentPoint
          : assessmentPoint // ignore: cast_nullable_to_non_nullable
              as AssessmentPoint,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      mahasiswa: null == mahasiswa
          ? _value.mahasiswa
          : mahasiswa // ignore: cast_nullable_to_non_nullable
              as Mahasiswa,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      detailAssessmentStudent: freezed == detailAssessmentStudent
          ? _value._detailAssessmentStudent
          : detailAssessmentStudent // ignore: cast_nullable_to_non_nullable
              as List<DetailAssessmentStudent>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AssessmentStudent implements _AssessmentStudent {
  _$_AssessmentStudent(
      {required this.id,
      required this.kelompok,
      required this.assessmentPoint,
      this.score = 0,
      required this.mahasiswa,
      this.status = '',
      final List<DetailAssessmentStudent>? detailAssessmentStudent})
      : _detailAssessmentStudent = detailAssessmentStudent;

  factory _$_AssessmentStudent.fromJson(Map<String, dynamic> json) =>
      _$$_AssessmentStudentFromJson(json);

  @override
  final int id;
  @override
  final Kelompok kelompok;
  @override
  final AssessmentPoint assessmentPoint;
  @override
  @JsonKey()
  final int score;
  @override
  final Mahasiswa mahasiswa;
  @override
  @JsonKey()
  final String status;
  final List<DetailAssessmentStudent>? _detailAssessmentStudent;
  @override
  List<DetailAssessmentStudent>? get detailAssessmentStudent {
    final value = _detailAssessmentStudent;
    if (value == null) return null;
    if (_detailAssessmentStudent is EqualUnmodifiableListView)
      return _detailAssessmentStudent;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AssessmentStudent(id: $id, kelompok: $kelompok, assessmentPoint: $assessmentPoint, score: $score, mahasiswa: $mahasiswa, status: $status, detailAssessmentStudent: $detailAssessmentStudent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AssessmentStudent &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.kelompok, kelompok) ||
                other.kelompok == kelompok) &&
            (identical(other.assessmentPoint, assessmentPoint) ||
                other.assessmentPoint == assessmentPoint) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.mahasiswa, mahasiswa) ||
                other.mahasiswa == mahasiswa) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(
                other._detailAssessmentStudent, _detailAssessmentStudent));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      kelompok,
      assessmentPoint,
      score,
      mahasiswa,
      status,
      const DeepCollectionEquality().hash(_detailAssessmentStudent));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AssessmentStudentCopyWith<_$_AssessmentStudent> get copyWith =>
      __$$_AssessmentStudentCopyWithImpl<_$_AssessmentStudent>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AssessmentStudentToJson(
      this,
    );
  }
}

abstract class _AssessmentStudent implements AssessmentStudent {
  factory _AssessmentStudent(
          {required final int id,
          required final Kelompok kelompok,
          required final AssessmentPoint assessmentPoint,
          final int score,
          required final Mahasiswa mahasiswa,
          final String status,
          final List<DetailAssessmentStudent>? detailAssessmentStudent}) =
      _$_AssessmentStudent;

  factory _AssessmentStudent.fromJson(Map<String, dynamic> json) =
      _$_AssessmentStudent.fromJson;

  @override
  int get id;
  @override
  Kelompok get kelompok;
  @override
  AssessmentPoint get assessmentPoint;
  @override
  int get score;
  @override
  Mahasiswa get mahasiswa;
  @override
  String get status;
  @override
  List<DetailAssessmentStudent>? get detailAssessmentStudent;
  @override
  @JsonKey(ignore: true)
  _$$_AssessmentStudentCopyWith<_$_AssessmentStudent> get copyWith =>
      throw _privateConstructorUsedError;
}
