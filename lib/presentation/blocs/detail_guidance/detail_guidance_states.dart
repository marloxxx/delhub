import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/models/user_model.dart';
import '../../../data/models/request_model.dart';
part 'detail_guidance_states.freezed.dart';

@freezed
abstract class DetailGuidanceState with _$DetailGuidanceState {
  const factory DetailGuidanceState.initial() = DetailGuidanceInitialState;
  const factory DetailGuidanceState.loading() = DetailGuidanceLoadingState;
  const factory DetailGuidanceState.error(String message) =
      DetailGuidanceErrorState;
  const factory DetailGuidanceState.loaded({
    required User user,
    required Request request,
    required bool isUpdated,
  }) = DetailGuidanceLoadedState;
}
