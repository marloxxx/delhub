import 'package:delhub/data/models/krs_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'assesment_point_model.freezed.dart';
part 'assesment_point_model.g.dart';

@freezed
class AssesmentPoint with _$AssesmentPoint {
  factory AssesmentPoint({
    required int id,
    KRS? krs,
    @Default('') String name,
    @Default(0) int weight,
  }) = _AssesmentPoint;

  factory AssesmentPoint.fromJson(Map<String, Object?> json) =>
      _$AssesmentPointFromJson(json);
}
