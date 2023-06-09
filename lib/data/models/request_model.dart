import 'package:freezed_annotation/freezed_annotation.dart';

import 'kelompok_model.dart';
import 'room_model.dart';
part 'request_model.freezed.dart';
part 'request_model.g.dart';

typedef RequestList = List<Request>;

@freezed
class Request with _$Request {
  factory Request({
    @Default(0) int id,
    @Default('') String description,
    DateTime? waktu,
    @Default('') String status,
    @Default(false) bool is_done,
    @Default('') String file,
    Kelompok? kelompok,
    Room? ruangan,
  }) = _Request;
  factory Request.fromJson(Map<String, dynamic> json) =>
      _$RequestFromJson(json);
}
