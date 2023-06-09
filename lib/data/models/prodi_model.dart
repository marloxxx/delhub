import 'package:freezed_annotation/freezed_annotation.dart';
part 'prodi_model.freezed.dart';
part 'prodi_model.g.dart';

@freezed
class Prodi with _$Prodi {
  factory Prodi({
    required int id,
    required String name,
    required String kode,
    required String fakultas,
  }) = _Prodi;
  factory Prodi.fromJson(Map<String, Object?> json) => _$ProdiFromJson(json);
}
