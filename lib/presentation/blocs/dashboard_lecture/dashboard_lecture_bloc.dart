import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/service_locator.dart';
import '../../../../data/models/user_model.dart';
import '../../../../domain/usecases/get_local_data_usecase.dart';
import '../../../../domain/usecases/request_usecase.dart';
import '../../../domain/usecases/krs_usecase.dart';
import '../../../domain/usecases/login_usecase.dart';
import 'dashboard_lecture_event.dart';
import 'dashboard_lecture_states.dart';

class DashboardLectureBloc
    extends Bloc<DashboardLectureEvent, DashboardLectureState> {
  DashboardLectureBloc() : super(const DashboardInitialState()) {
    on<GetDataEvent>(
      (event, emit) async {
        var user = await serviceLocator<GetLocalDataUsecase>()
            .getUserFromLocalStorage();

        var requests =
            await serviceLocator<RequestUseCase>().getRequestsFromServer();
        var krs = await serviceLocator<KRSUsecase>().getKRSFromServer();
        // set the data to the state
        emit(
          DashboardLectureState.loaded(
            user: user.getOrElse(
              () => User(),
            ),
            requestList: requests.getOrElse(
              () => [],
            ),
            krsList: krs.getOrElse(
              () => [],
            ),
            // announcements: announcements,
          ),
        );
      },
    );
    on<LogoutEvent>(
      (event, emit) async {
        emit(const DashboardLectureState.loading());
        try {
          final result = await serviceLocator<LoginUserUsecase>().logout();
          result.fold(
            (failure) {
              emit(DashboardLectureState.error(failure.message));
            },
            (data) {
              emit(const DashboardLectureState.logout());
            },
          );
        } catch (e) {
          emit(DashboardLectureState.error(e.toString()));
        }
      },
    );
  }
}
