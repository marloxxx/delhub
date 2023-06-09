import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/request_model.dart';
import '../../../data/models/user_model.dart';
part 'dashboard_student_states.freezed.dart';

@freezed
class DashboardStudentState with _$DashboardStudentState {
  const factory DashboardStudentState.initial() = DashboardInitialState;
  const factory DashboardStudentState.loading() = DashboardLoadingState;
  const factory DashboardStudentState.error(String message) =
      DashboardErrorState;
  const factory DashboardStudentState.loaded({
    required User user,
    required RequestList requestList,
    // required AnnouncementList announcementList,
  }) = DashboardLoadedState;
  const factory DashboardStudentState.logout() = DashboardLogoutState;
}
