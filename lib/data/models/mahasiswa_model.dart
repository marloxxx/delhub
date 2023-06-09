import 'package:freezed_annotation/freezed_annotation.dart';

import 'kelompok_model.dart';
part 'mahasiswa_model.freezed.dart';
part 'mahasiswa_model.g.dart';

typedef MahasiswaList = List<Mahasiswa>;

@freezed
class Mahasiswa with _$Mahasiswa {
  factory Mahasiswa({
    @Default('') String nim,
    @Default('') String angkatan,
    @Default('') String prodi,
    @Default('') String nama,
    @Default('') String role,
    Kelompok? kelompok,
  }) = _Mahasiswa;
  factory Mahasiswa.fromJson(Map<String, Object?> json) =>
      _$MahasiswaFromJson(json);
}
