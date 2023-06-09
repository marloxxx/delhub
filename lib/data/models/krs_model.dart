import 'package:freezed_annotation/freezed_annotation.dart';
part 'krs_model.freezed.dart';
part 'krs_model.g.dart';

typedef KRSList = List<KRS>;

@freezed
class KRS with _$KRS {
  factory KRS({
    @Default(0) int id,
    @Default('') String mataKuliah,
    @Default('') String dosen,
  }) = _KRS;
  factory KRS.fromJson(Map<String, Object?> json) => _$KRSFromJson(json);
}
