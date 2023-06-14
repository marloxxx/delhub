// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_routers.dart';

abstract class _$FlutterRouter extends RootStackRouter {
  // ignore: unused_element
  _$FlutterRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    AssesmentPointRoute.name: (routeData) {
      final args = routeData.argsAs<AssesmentPointRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: Assessment(
          key: args.key,
          kelompok: args.kelompok,
        ),
      );
    },
    DetailAssessmentRoute.name: (routeData) {
      final args = routeData.argsAs<DetailAssessmentRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: DetailAssessment(
          key: args.key,
          kelompok: args.kelompok,
          assessmentPoint: args.assessmentPoint,
        ),
      );
    },
    DashboardLectureRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const DashboardLectureScreen(),
      );
    },
    DashboardStudentRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const DashboardStudentScreen(),
      );
    },
    DetailGroupRoute.name: (routeData) {
      final args = routeData.argsAs<DetailGroupRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: DetailGroup(
          key: args.key,
          kelompok: args.kelompok,
        ),
      );
    },
    GroupOtherRoute.name: (routeData) {
      final args = routeData.argsAs<GroupOtherRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: Other(
          key: args.key,
          kelompok: args.kelompok,
          user: args.user,
        ),
      );
    },
    GroupRoute.name: (routeData) {
      final args = routeData.argsAs<GroupRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: Group(
          key: args.key,
          krs: args.krs,
        ),
      );
    },
    StatusUploadRoute.name: (routeData) {
      final args = routeData.argsAs<StatusUploadRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: StatusUpload(
          key: args.key,
          request: args.request,
        ),
      );
    },
    DetailGuidanceRoute.name: (routeData) {
      final args = routeData.argsAs<DetailGuidanceRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: Guidance(
          key: args.key,
          request: args.request,
        ),
      );
    },
    GuidanceStudentRoute.name: (routeData) {
      final args = routeData.argsAs<GuidanceStudentRouteArgs>(
          orElse: () => const GuidanceStudentRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: History(
          key: args.key,
          kelompokId: args.kelompokId,
        ),
      );
    },
    LoginRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LoginScreen(),
      );
    },
    RequestGuidanceRoute.name: (routeData) {
      final args = routeData.argsAs<RequestGuidanceRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: RequestingGuidance(
          key: args.key,
          user: args.user,
        ),
      );
    },
  };
}

/// generated route for
/// [Assessment]
class AssesmentPointRoute extends PageRouteInfo<AssesmentPointRouteArgs> {
  AssesmentPointRoute({
    Key? key,
    required Kelompok kelompok,
    List<PageRouteInfo>? children,
  }) : super(
          AssesmentPointRoute.name,
          args: AssesmentPointRouteArgs(
            key: key,
            kelompok: kelompok,
          ),
          initialChildren: children,
        );

  static const String name = 'AssesmentPointRoute';

  static const PageInfo<AssesmentPointRouteArgs> page =
      PageInfo<AssesmentPointRouteArgs>(name);
}

class AssesmentPointRouteArgs {
  const AssesmentPointRouteArgs({
    this.key,
    required this.kelompok,
  });

  final Key? key;

  final Kelompok kelompok;

  @override
  String toString() {
    return 'AssesmentPointRouteArgs{key: $key, kelompok: $kelompok}';
  }
}

/// generated route for
/// [DetailAssessment]
class DetailAssessmentRoute extends PageRouteInfo<DetailAssessmentRouteArgs> {
  DetailAssessmentRoute({
    Key? key,
    required Kelompok kelompok,
    required AssessmentPoint assessmentPoint,
    List<PageRouteInfo>? children,
  }) : super(
          DetailAssessmentRoute.name,
          args: DetailAssessmentRouteArgs(
            key: key,
            kelompok: kelompok,
            assessmentPoint: assessmentPoint,
          ),
          initialChildren: children,
        );

  static const String name = 'DetailAssessmentRoute';

  static const PageInfo<DetailAssessmentRouteArgs> page =
      PageInfo<DetailAssessmentRouteArgs>(name);
}

class DetailAssessmentRouteArgs {
  const DetailAssessmentRouteArgs({
    this.key,
    required this.kelompok,
    required this.assessmentPoint,
  });

  final Key? key;

  final Kelompok kelompok;

  final AssessmentPoint assessmentPoint;

  @override
  String toString() {
    return 'DetailAssessmentRouteArgs{key: $key, kelompok: $kelompok, assessmentPoint: $assessmentPoint}';
  }
}

/// generated route for
/// [DashboardLectureScreen]
class DashboardLectureRoute extends PageRouteInfo<void> {
  const DashboardLectureRoute({List<PageRouteInfo>? children})
      : super(
          DashboardLectureRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardLectureRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [DashboardStudentScreen]
class DashboardStudentRoute extends PageRouteInfo<void> {
  const DashboardStudentRoute({List<PageRouteInfo>? children})
      : super(
          DashboardStudentRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardStudentRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [DetailGroup]
class DetailGroupRoute extends PageRouteInfo<DetailGroupRouteArgs> {
  DetailGroupRoute({
    Key? key,
    required Kelompok kelompok,
    List<PageRouteInfo>? children,
  }) : super(
          DetailGroupRoute.name,
          args: DetailGroupRouteArgs(
            key: key,
            kelompok: kelompok,
          ),
          initialChildren: children,
        );

  static const String name = 'DetailGroupRoute';

  static const PageInfo<DetailGroupRouteArgs> page =
      PageInfo<DetailGroupRouteArgs>(name);
}

class DetailGroupRouteArgs {
  const DetailGroupRouteArgs({
    this.key,
    required this.kelompok,
  });

  final Key? key;

  final Kelompok kelompok;

  @override
  String toString() {
    return 'DetailGroupRouteArgs{key: $key, kelompok: $kelompok}';
  }
}

/// generated route for
/// [Other]
class GroupOtherRoute extends PageRouteInfo<GroupOtherRouteArgs> {
  GroupOtherRoute({
    Key? key,
    required Kelompok kelompok,
    required User user,
    List<PageRouteInfo>? children,
  }) : super(
          GroupOtherRoute.name,
          args: GroupOtherRouteArgs(
            key: key,
            kelompok: kelompok,
            user: user,
          ),
          initialChildren: children,
        );

  static const String name = 'GroupOtherRoute';

  static const PageInfo<GroupOtherRouteArgs> page =
      PageInfo<GroupOtherRouteArgs>(name);
}

class GroupOtherRouteArgs {
  const GroupOtherRouteArgs({
    this.key,
    required this.kelompok,
    required this.user,
  });

  final Key? key;

  final Kelompok kelompok;

  final User user;

  @override
  String toString() {
    return 'GroupOtherRouteArgs{key: $key, kelompok: $kelompok, user: $user}';
  }
}

/// generated route for
/// [Group]
class GroupRoute extends PageRouteInfo<GroupRouteArgs> {
  GroupRoute({
    Key? key,
    required KRS krs,
    List<PageRouteInfo>? children,
  }) : super(
          GroupRoute.name,
          args: GroupRouteArgs(
            key: key,
            krs: krs,
          ),
          initialChildren: children,
        );

  static const String name = 'GroupRoute';

  static const PageInfo<GroupRouteArgs> page = PageInfo<GroupRouteArgs>(name);
}

class GroupRouteArgs {
  const GroupRouteArgs({
    this.key,
    required this.krs,
  });

  final Key? key;

  final KRS krs;

  @override
  String toString() {
    return 'GroupRouteArgs{key: $key, krs: $krs}';
  }
}

/// generated route for
/// [StatusUpload]
class StatusUploadRoute extends PageRouteInfo<StatusUploadRouteArgs> {
  StatusUploadRoute({
    Key? key,
    required Request request,
    List<PageRouteInfo>? children,
  }) : super(
          StatusUploadRoute.name,
          args: StatusUploadRouteArgs(
            key: key,
            request: request,
          ),
          initialChildren: children,
        );

  static const String name = 'StatusUploadRoute';

  static const PageInfo<StatusUploadRouteArgs> page =
      PageInfo<StatusUploadRouteArgs>(name);
}

class StatusUploadRouteArgs {
  const StatusUploadRouteArgs({
    this.key,
    required this.request,
  });

  final Key? key;

  final Request request;

  @override
  String toString() {
    return 'StatusUploadRouteArgs{key: $key, request: $request}';
  }
}

/// generated route for
/// [Guidance]
class DetailGuidanceRoute extends PageRouteInfo<DetailGuidanceRouteArgs> {
  DetailGuidanceRoute({
    Key? key,
    required Request request,
    List<PageRouteInfo>? children,
  }) : super(
          DetailGuidanceRoute.name,
          args: DetailGuidanceRouteArgs(
            key: key,
            request: request,
          ),
          initialChildren: children,
        );

  static const String name = 'DetailGuidanceRoute';

  static const PageInfo<DetailGuidanceRouteArgs> page =
      PageInfo<DetailGuidanceRouteArgs>(name);
}

class DetailGuidanceRouteArgs {
  const DetailGuidanceRouteArgs({
    this.key,
    required this.request,
  });

  final Key? key;

  final Request request;

  @override
  String toString() {
    return 'DetailGuidanceRouteArgs{key: $key, request: $request}';
  }
}

/// generated route for
/// [History]
class GuidanceStudentRoute extends PageRouteInfo<GuidanceStudentRouteArgs> {
  GuidanceStudentRoute({
    Key? key,
    int? kelompokId,
    List<PageRouteInfo>? children,
  }) : super(
          GuidanceStudentRoute.name,
          args: GuidanceStudentRouteArgs(
            key: key,
            kelompokId: kelompokId,
          ),
          initialChildren: children,
        );

  static const String name = 'GuidanceStudentRoute';

  static const PageInfo<GuidanceStudentRouteArgs> page =
      PageInfo<GuidanceStudentRouteArgs>(name);
}

class GuidanceStudentRouteArgs {
  const GuidanceStudentRouteArgs({
    this.key,
    this.kelompokId,
  });

  final Key? key;

  final int? kelompokId;

  @override
  String toString() {
    return 'GuidanceStudentRouteArgs{key: $key, kelompokId: $kelompokId}';
  }
}

/// generated route for
/// [LoginScreen]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [RequestingGuidance]
class RequestGuidanceRoute extends PageRouteInfo<RequestGuidanceRouteArgs> {
  RequestGuidanceRoute({
    Key? key,
    required User user,
    List<PageRouteInfo>? children,
  }) : super(
          RequestGuidanceRoute.name,
          args: RequestGuidanceRouteArgs(
            key: key,
            user: user,
          ),
          initialChildren: children,
        );

  static const String name = 'RequestGuidanceRoute';

  static const PageInfo<RequestGuidanceRouteArgs> page =
      PageInfo<RequestGuidanceRouteArgs>(name);
}

class RequestGuidanceRouteArgs {
  const RequestGuidanceRouteArgs({
    this.key,
    required this.user,
  });

  final Key? key;

  final User user;

  @override
  String toString() {
    return 'RequestGuidanceRouteArgs{key: $key, user: $user}';
  }
}
