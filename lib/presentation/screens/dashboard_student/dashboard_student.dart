import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../routes/app_routers.dart';

import '../../blocs/dashboard_student/dashboard_student_bloc.dart';
import '../../blocs/dashboard_student/dashboard_student_event.dart';
import '../../blocs/dashboard_student/dashboard_student_states.dart';
import 'components/body.dart';

@RoutePage(name: 'DashboardStudentRoute')
class DashboardStudentScreen extends StatefulWidget {
  const DashboardStudentScreen({super.key});

  @override
  State<DashboardStudentScreen> createState() => _DashboardStudentScreen();
}

class _DashboardStudentScreen extends State<DashboardStudentScreen> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<DashboardStudentBloc>(context).add(const GetDataEvent());
  }

  Future<void> _refresh() async {
    BlocProvider.of<DashboardStudentBloc>(context).add(const GetDataEvent());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocConsumer<DashboardStudentBloc, DashboardStudentState>(
        listener: (context, state) {
          if (state is DashboardErrorState) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.message),
              ),
            );
          } else if (state is DashboardLogoutState) {
            AutoRouter.of(context).replace(const LoginRoute());
          }
        },
        builder: (context, state) {
          if (state is DashboardErrorState) {
            return Scaffold(
              body: RefreshIndicator(
                onRefresh: _refresh,
                child: const SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  child: SizedBox(
                    child: Center(
                      child: Text(
                        "There was an error loading the data",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            );
          } else if (state is DashboardInitialState) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is DashboardLoadedState) {
            return RefreshIndicator(
              onRefresh: () async {
                BlocProvider.of<DashboardStudentBloc>(context)
                    .add(const GetDataEvent());
              },
              child: SingleChildScrollView(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: Body(
                    user: state.user,
                    requestList: state.requestList,
                  ),
                ),
              ),
            );
          } else {
            return Scaffold(
              body: RefreshIndicator(
                onRefresh: _refresh,
                child: SingleChildScrollView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height,
                    child: const Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircularProgressIndicator(),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Loading...",
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
