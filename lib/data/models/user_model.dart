import 'package:freezed_annotation/freezed_annotation.dart';

import 'dosen_model.dart';
import 'mahasiswa_model.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class User with _$User {
  factory User({
    @Default(0) int id,
    @Default('') String name,
    @Default('') String email,
    @Default('') String password,
    @Default('') String token,
    Mahasiswa? mahasiswa,
    Dosen? dosen,
    @Default('') String role,
  }) = _User;
  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);
}
