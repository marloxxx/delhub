import 'package:freezed_annotation/freezed_annotation.dart';

import 'dosen_model.dart';
import 'krs_model.dart';
import 'mahasiswa_model.dart';
import 'request_model.dart';
part 'kelompok_model.freezed.dart';
part 'kelompok_model.g.dart';

typedef KelompokList = List<Kelompok>;

@freezed
class Kelompok with _$Kelompok {
  factory Kelompok({
    @Default(0) id,
    @Default('') String name,
    @Default('') String topik,
    @Default('') String prodi,
    @Default('') String angkatan,
    DosenList? pembimbing,
    DosenList? penguji,
    KRS? krs,
    MahasiswaList? mahasiswa,
    RequestList? requests,
  }) = _Kelompok;
  factory Kelompok.fromJson(Map<String, Object?> json) =>
      _$KelompokFromJson(json);
}
