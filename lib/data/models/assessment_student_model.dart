import 'package:freezed_annotation/freezed_annotation.dart';

import 'assessment_point_model.dart';
import 'detail_assessment_student_model.dart';
import 'kelompok_model.dart';
import 'mahasiswa_model.dart';

part 'assessment_student_model.freezed.dart';
part 'assessment_student_model.g.dart';

typedef AssessmentStudentList = List<AssessmentStudent>;

@freezed
class AssessmentStudent with _$AssessmentStudent {
  factory AssessmentStudent({
    required int id,
    required Kelompok kelompok,
    required AssessmentPoint assessmentPoint,
    @Default(0) int score,
    required Mahasiswa mahasiswa,
    @Default('') String status,
    DetailAssessmentStudentList? detailAssessmentStudent,
  }) = _AssessmentStudent;
  factory AssessmentStudent.fromJson(Map<String, Object?> json) =>
      _$AssessmentStudentFromJson(json);
}
