import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/service_locator.dart';
import '../../../../data/models/user_model.dart';
import '../../../../domain/usecases/get_local_data_usecase.dart';
import '../../../../domain/usecases/request_usecase.dart';
import '../../../domain/usecases/login_usecase.dart';
import 'dashboard_student_event.dart';
import 'dashboard_student_states.dart';

class DashboardStudentBloc
    extends Bloc<DashboardStudentEvent, DashboardStudentState> {
  DashboardStudentBloc() : super(const DashboardInitialState()) {
    on<GetDataEvent>(
      (event, emit) async {
        emit(const DashboardStudentState.loading());
        var user = await serviceLocator<GetLocalDataUsecase>()
            .getUserFromLocalStorage();
        var requests =
            await serviceLocator<RequestUseCase>().getRequestsFromServer();
        // set the data to the state
        emit(
          DashboardStudentState.loaded(
            user: user.getOrElse(
              () => User(),
            ),
            requestList: requests.getOrElse(
              () => [],
            ),
            // announcements: announcements,
          ),
        );
      },
    );
    on<LogoutEvent>(
      (event, emit) async {
        emit(const DashboardStudentState.loading());
        try {
          final result = await serviceLocator<LoginUserUsecase>().logout();
          result.fold(
            (failure) {
              emit(DashboardStudentState.error(failure.message));
            },
            (data) {
              emit(const DashboardStudentState.logout());
            },
          );
        } catch (e) {
          emit(DashboardStudentState.error(e.toString()));
        }
      },
    );
  }
}
