import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/kelompok_model.dart';
part 'group_states.freezed.dart';

@freezed
abstract class GroupState with _$GroupState {
  const factory GroupState.initial() = GroupInitialState;
  const factory GroupState.loading() = GroupLoadingState;
  const factory GroupState.error({required String message}) = GroupErrorState;
  const factory GroupState.loaded({required KelompokList groupList}) =
      GroupLoadedState;
}
