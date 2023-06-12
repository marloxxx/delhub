import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../data/models/kelompok_model.dart';
import '../data/models/krs_model.dart';
import '../data/models/request_model.dart';
import '../data/models/user_model.dart';
import '../presentation/screens/group/components/detail_group.dart';
import '../presentation/screens/assesment/assessment.dart';
import '../presentation/screens/group/components/other.dart';
import '../presentation/screens/login/login_screen.dart';
import '../presentation/screens/dashboard_student/dashboard_student.dart';
import '../presentation/screens/dashboard_lecture/dashboard_lecture.dart';
import '../presentation/screens/history/history.dart';
import '../presentation/screens/guidance/guidance.dart';
import '../presentation/screens/guidance/components/status_upload.dart';
import '../presentation/screens/request/request_guidance.dart';
import '../presentation/screens/group/group.dart';

part 'app_routers.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class FlutterRouter extends _$FlutterRouter {
  @override
  final List<AutoRoute> routes = [
    AutoRoute(
      path: '/',
      page: LoginRoute.page,
    ),
    AutoRoute(path: '/dashboard-student', page: DashboardStudentRoute.page),
    AutoRoute(path: '/dashboard-lecture', page: DashboardLectureRoute.page),
    AutoRoute(path: '/guidance', page: GuidanceStudentRoute.page),
    AutoRoute(path: '/guidance/detail', page: DetailGuidanceRoute.page),
    AutoRoute(path: '/guidance/status', page: StatusUploadRoute.page),
    AutoRoute(path: '/request', page: RequestGuidanceRoute.page),
    AutoRoute(path: '/group', page: GroupRoute.page),
    AutoRoute(path: '/group/other', page: GroupOtherRoute.page),
    AutoRoute(path: '/group/detail', page: DetailGroupRoute.page),
  ];
}
