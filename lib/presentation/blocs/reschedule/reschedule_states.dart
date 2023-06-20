import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/request_model.dart';
import '../../../data/models/room_model.dart';

part 'reschedule_states.freezed.dart';

@freezed
abstract class RescheduleState with _$RescheduleState {
  const factory RescheduleState.initial() = RescheduleInitialState;
  const factory RescheduleState.loading() = RescheduleLoadingState;
  const factory RescheduleState.error(String message) = RescheduleErrorState;
  const factory RescheduleState.loaded({
    required Request request,
    required RoomList rooms,
    required bool isUpdated,
  }) = RescheduleLoadedState;
}
