import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/models/request_model.dart';
part 'request_event.freezed.dart';

@freezed
class RequestEvent with _$RequestEvent {
  const factory RequestEvent.getRooms() = GetRoomsEvent;
  const factory RequestEvent.requesting({required Request request}) =
      RequestingEvent;
  const factory RequestEvent.requested() = RequestedEvent;
  const factory RequestEvent.error(String message) = RequestErrorEvent;
}
