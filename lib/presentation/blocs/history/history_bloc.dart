import 'package:bloc/bloc.dart';

import '../../../../core/service_locator.dart';
import '../../../../domain/usecases/request_usecase.dart';
import 'history_event.dart';
import 'history_state.dart';

class HistoryBloc extends Bloc<HistoryEvent, HistoryState> {
  HistoryBloc() : super(const HistoryInitialState()) {
    on<GetDataEvent>((event, emit) async {
      var requests =
          await serviceLocator<RequestUseCase>().getRequestsFromServer();
      // set the data to the state
      emit(HistoryState.loaded(
        requestList: requests.getOrElse(
          () => [],
        ),
      ));
    });

    on<GetDataByKelompokIdEvent>((event, emit) async {
      var requests = await serviceLocator<RequestUseCase>()
          .getRequestsFromServerByKelompokId(event.kelompokId);
      // set the data to the state
      emit(HistoryState.loaded(
        requestList: requests.getOrElse(
          () => [],
        ),
      ));
    });
  }
}
