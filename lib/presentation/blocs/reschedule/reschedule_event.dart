import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/request_model.dart';

part 'reschedule_event.freezed.dart';

@freezed
class RescheduleEvent with _$RescheduleEvent {
  const factory RescheduleEvent.getData() = GetDataEvent;
  const factory RescheduleEvent.updateData({
    required Request request,
  }) = UpdateDataEvent;
}
