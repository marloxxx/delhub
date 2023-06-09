import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/krs_model.dart';
import '../../../data/models/request_model.dart';
import '../../../data/models/user_model.dart';

part 'dashboard_lecture_states.freezed.dart';

@freezed
class DashboardLectureState with _$DashboardLectureState {
  const factory DashboardLectureState.initial() = DashboardInitialState;
  const factory DashboardLectureState.loading() = DashboardLoadingState;
  const factory DashboardLectureState.error(String message) =
      DashboardErrorState;
  const factory DashboardLectureState.loaded({
    required User user,
    required RequestList requestList,
    required KRSList krsList,
    // required AnnouncementList announcementList,
  }) = DashboardLoadedState;
  const factory DashboardLectureState.logout() = DashboardLogoutState;
}
