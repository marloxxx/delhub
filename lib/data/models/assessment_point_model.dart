import 'package:freezed_annotation/freezed_annotation.dart';

import 'assessment_component_model.dart';

part 'assessment_point_model.freezed.dart';
part 'assessment_point_model.g.dart';

typedef AssessmentPointList = List<AssessmentPoint>;

@freezed
class AssessmentPoint with _$AssessmentPoint {
  factory AssessmentPoint({
    required int id,
    @Default('') String name,
    @Default(0) int weight,
    AssessmentComponentList? components,
  }) = _AssessmentPoint;

  factory AssessmentPoint.fromJson(Map<String, Object?> json) =>
      _$AssessmentPointFromJson(json);
}
