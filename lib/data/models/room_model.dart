import 'package:freezed_annotation/freezed_annotation.dart';
part 'room_model.freezed.dart';
part 'room_model.g.dart';

typedef RoomList = List<Room>;

@freezed
class Room with _$Room {
  factory Room({
    required int id,
    required String name,
  }) = _Room;
  factory Room.fromJson(Map<String, dynamic> json) => _$RoomFromJson(json);
}
