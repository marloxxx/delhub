import 'package:freezed_annotation/freezed_annotation.dart';
part 'dashboard_student_event.freezed.dart';

@freezed
class DashboardStudentEvent with _$DashboardStudentEvent {
  const factory DashboardStudentEvent.getData() = GetDataEvent;
  const factory DashboardStudentEvent.logout() = LogoutEvent;
}
