import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/kelompok_model.dart';
part 'assessment_event.freezed.dart';

@freezed
class AssessmentEvent with _$AssessmentEvent {
  const factory AssessmentEvent.getAssesmentPoints(
      {required Kelompok $kelompok}) = GetAssessmentPoints;
  // const factory AssesmentEvent.getAssesmentComponents(
  //     {required Kelompok $kelompok}
  // ) =
  //     GetAssesmentComponents;
}
