import 'package:freezed_annotation/freezed_annotation.dart';

part 'assesment_component_model.freezed.dart';
part 'assesment_component_model.g.dart';

@freezed
class AssesmentComponent with _$AssesmentComponent {
  factory AssesmentComponent({
    required int id,
    @Default('') String name,
    @Default(0) int weight,
  }) = _AssesmentComponent;

  factory AssesmentComponent.fromJson(Map<String, Object?> json) =>
      _$AssesmentComponentFromJson(json);
}
