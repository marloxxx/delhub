import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../routes/app_routers.dart';
import '../../blocs/dashboard_lecture/dashboard_lecture_bloc.dart';
import '../../blocs/dashboard_lecture/dashboard_lecture_event.dart';
import '../../blocs/dashboard_lecture/dashboard_lecture_states.dart';
import 'components/body.dart';

@RoutePage(name: 'DashboardLectureRoute')
class DashboardLectureScreen extends StatefulWidget {
  const DashboardLectureScreen({super.key});

  @override
  State<DashboardLectureScreen> createState() => _DashboardLectureScreenState();
}

class _DashboardLectureScreenState extends State<DashboardLectureScreen> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<DashboardLectureBloc>(context).add(const GetDataEvent());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocConsumer<DashboardLectureBloc, DashboardLectureState>(
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
          if (state is DashboardInitialState) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is DashboardLoadedState) {
            return RefreshIndicator(
              onRefresh: () async {
                BlocProvider.of<DashboardLectureBloc>(context)
                    .add(const GetDataEvent());
              },
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: Body(
                    user: state.user,
                    requestList: state.requestList,
                    krsList: state.krsList,
                  ),
                ),
              ),
            );
          } else {
            return const Scaffold(
              body: Center(
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
            );
          }
        },
      ),
    );
  }
}
