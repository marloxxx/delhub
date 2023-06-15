import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/assessment_point_model.dart';
part 'assessment_states.freezed.dart';

@freezed
class AssessmentStates with _$AssessmentStates {
  const factory AssessmentStates.initial() = AssessmentInitialState;
  const factory AssessmentStates.loading() = AssessmentLoadingState;
  const factory AssessmentStates.error(String message) = AssessmentErrorState;
  const factory AssessmentStates.loaded(
      {required AssessmentPointList assessmentPointList,
      required bool isUpdated}) = AssessmentLoadedState;
}
