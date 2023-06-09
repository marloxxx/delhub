import 'package:freezed_annotation/freezed_annotation.dart';
part 'kategori_model.freezed.dart';
part 'kategori_model.g.dart';

@freezed
class Kategori with _$Kategori {
  factory Kategori({
    required int id,
    required String kode_mk,
    required String nama_mk,
    required String nama_singkat,
  }) = _Kategori;
  factory Kategori.fromJson(Map<String, Object?> json) =>
      _$KategoriFromJson(json);
}
