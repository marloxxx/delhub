import 'package:freezed_annotation/freezed_annotation.dart';
part 'fakultas_model.freezed.dart';
part 'fakultas_model.g.dart';

@freezed
class Fakultas with _$Fakultas {
  factory Fakultas({
    required String nama,
  }) = _Fakultas;
  factory Fakultas.fromJson(Map<String, Object?> json) =>
      _$FakultasFromJson(json);
}
