import 'package:freezed_annotation/freezed_annotation.dart';
part 'dashboard_lecture_event.freezed.dart';

@freezed
class DashboardLectureEvent with _$DashboardLectureEvent {
  const factory DashboardLectureEvent.getData() = GetDataEvent;
  const factory DashboardLectureEvent.logout() = LogoutEvent;
}
