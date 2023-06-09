import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/request_model.dart';

part 'history_state.freezed.dart';

@freezed
class HistoryState with _$HistoryState {
  const factory HistoryState.initial() = HistoryInitialState;
  const factory HistoryState.loading() = HistoryLoadingState;
  const factory HistoryState.error(String message) = HistoryErrorState;
  const factory HistoryState.loaded({required RequestList requestList}) =
      HistoryLoadedState;
}
