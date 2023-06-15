import 'package:freezed_annotation/freezed_annotation.dart';

import 'assessment_component_model.dart';
import 'assessment_student_model.dart';

part 'detail_assessment_student_model.freezed.dart';
part 'detail_assessment_student_model.g.dart';

typedef DetailAssessmentStudentList = List<DetailAssessmentStudent>;

@freezed
class DetailAssessmentStudent with _$DetailAssessmentStudent {
  factory DetailAssessmentStudent({
    required int id,
    AssessmentStudent? assessmentStudent,
    AssessmentComponent? assessmentComponent,
    @Default(0.0) double score,
  }) = _DetailAssessmentStudent;

  factory DetailAssessmentStudent.fromJson(Map<String, Object?> json) =>
      _$DetailAssessmentStudentFromJson(json);
}
