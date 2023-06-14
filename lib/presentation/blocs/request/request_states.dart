import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/models/room_model.dart';

part 'request_states.freezed.dart';

@freezed
class RequestState with _$RequestState {
  const factory RequestState.initial() = RequestInitialState;
  const factory RequestState.loading() = RequestLoadingState;
  const factory RequestState.error(String message) = RequestErrorState;
  const factory RequestState.loaded(
      {required RoomList rooms, required bool success}) = RequestLoadedState;
}
