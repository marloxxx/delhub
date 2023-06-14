import 'package:freezed_annotation/freezed_annotation.dart';
part 'dosen_model.freezed.dart';
part 'dosen_model.g.dart';

typedef DosenList = List<Dosen>;

@freezed
class Dosen with _$Dosen {
  factory Dosen({
    @Default('') String nidn,
    @Default('') String name,
  }) = _Dosen;
  factory Dosen.fromJson(Map<String, Object?> json) => _$DosenFromJson(json);
}
