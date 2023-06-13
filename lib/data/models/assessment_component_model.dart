import 'package:freezed_annotation/freezed_annotation.dart';

part 'assessment_component_model.freezed.dart';
part 'assessment_component_model.g.dart';

typedef AssessmentComponentList = List<AssessmentComponent>;

@freezed
class AssessmentComponent with _$AssessmentComponent {
  factory AssessmentComponent({
    required int id,
    @Default('') String name,
    @Default(0) int weight,
  }) = _AssessmentComponent;

  factory AssessmentComponent.fromJson(Map<String, Object?> json) =>
      _$AssessmentComponentFromJson(json);
}
