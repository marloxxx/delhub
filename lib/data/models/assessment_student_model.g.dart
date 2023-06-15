// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assessment_student_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AssessmentStudent _$$_AssessmentStudentFromJson(Map<String, dynamic> json) =>
    _$_AssessmentStudent(
      id: json['id'] as int,
      kelompok: json['kelompok'] == null
          ? null
          : Kelompok.fromJson(json['kelompok'] as Map<String, dynamic>),
      assessmentPoint: json['assessmentPoint'] == null
          ? null
          : AssessmentPoint.fromJson(
              json['assessmentPoint'] as Map<String, dynamic>),
      score: (json['score'] as num?)?.toDouble() ?? 0.0,
      mahasiswa: json['mahasiswa'] == null
          ? null
          : Mahasiswa.fromJson(json['mahasiswa'] as Map<String, dynamic>),
      status: json['status'] as bool? ?? false,
      detailAssessmentStudent:
          (json['detailAssessmentStudent'] as List<dynamic>?)
              ?.map((e) =>
                  DetailAssessmentStudent.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$$_AssessmentStudentToJson(
        _$_AssessmentStudent instance) =>
    <String, dynamic>{
      'id': instance.id,
      'kelompok': instance.kelompok,
      'assessmentPoint': instance.assessmentPoint,
      'score': instance.score,
      'mahasiswa': instance.mahasiswa,
      'status': instance.status,
      'detailAssessmentStudent': instance.detailAssessmentStudent,
    };
