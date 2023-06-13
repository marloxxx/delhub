import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:one_context/one_context.dart';

import '../../core/service_locator.dart';
import '../../presentation/blocs/assesment/assessment_bloc.dart';
import '../../presentation/blocs/dashboard_lecture/dashboard_lecture_bloc.dart';
import '../../presentation/blocs/dashboard_student/dashboard_student_bloc.dart';
import '../../presentation/blocs/detail_guidance/detail_guidance_bloc.dart';
import '../../presentation/blocs/group/group_bloc.dart';
import '../../presentation/blocs/history/history_bloc.dart';
import '../../presentation/blocs/login/login_bloc.dart';
import '../../presentation/blocs/request/request_bloc.dart';
import '../../routes/app_routers.dart';

final scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final appRouter = serviceLocator<FlutterRouter>();
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => LoginBloc(),
        ),
        BlocProvider(create: (_) => DashboardStudentBloc()),
        BlocProvider(create: (_) => HistoryBloc()),
        BlocProvider(create: (_) => DetailGuidanceBloc()),
        BlocProvider(create: (_) => RequestBloc()),
        BlocProvider(create: (_) => DashboardLectureBloc()),
        BlocProvider(create: (_) => GroupBloc()),
        BlocProvider(create: (_) => AssesmentBloc()),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Delhub',
        theme: ThemeData(
          appBarTheme: const AppBarTheme(color: Color(0xFF13B9FF)),
        ),
        builder: OneContext().builder,
        routerDelegate: AutoRouterDelegate(appRouter),
        routeInformationParser: appRouter.defaultRouteParser(),
        scaffoldMessengerKey: scaffoldMessengerKey,
      ),
    );
  }
}
