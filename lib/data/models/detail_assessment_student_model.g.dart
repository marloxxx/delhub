// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_assessment_student_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DetailAssessmentStudent _$$_DetailAssessmentStudentFromJson(
        Map<String, dynamic> json) =>
    _$_DetailAssessmentStudent(
      id: json['id'] as int,
      assessmentStudent: json['assessmentStudent'] == null
          ? null
          : AssessmentStudent.fromJson(
              json['assessmentStudent'] as Map<String, dynamic>),
      assessmentComponent: json['assessmentComponent'] == null
          ? null
          : AssessmentComponent.fromJson(
              json['assessmentComponent'] as Map<String, dynamic>),
      score: json['score'] ?? 0,
    );

Map<String, dynamic> _$$_DetailAssessmentStudentToJson(
        _$_DetailAssessmentStudent instance) =>
    <String, dynamic>{
      'id': instance.id,
      'assessmentStudent': instance.assessmentStudent,
      'assessmentComponent': instance.assessmentComponent,
      'score': instance.score,
    };
