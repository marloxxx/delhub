import 'package:freezed_annotation/freezed_annotation.dart';
part 'group_event.freezed.dart';

@freezed
class GroupEvent with _$GroupEvent {
  const factory GroupEvent.getDatabyKrs({required int krsId}) =
      GetDatabyKrsEvent;
}
