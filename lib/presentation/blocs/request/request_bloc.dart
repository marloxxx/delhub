import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/service_locator.dart';
import '../../../../domain/usecases/request_usecase.dart';
import '../../../../domain/usecases/room_usecase.dart';
import 'request_event.dart';
import 'request_states.dart';

class RequestBloc extends Bloc<RequestEvent, RequestState> {
  RequestBloc() : super(const RequestInitialState()) {
    on<GetRoomsEvent>((event, emit) async {
      emit(const RequestLoadingState());
      try {
        var response = await serviceLocator<RoomUsecase>().getRoomsFromServer();
        emit(RequestLoadedState(
          rooms: response.getOrElse(() => []),
          success: false,
        ));
      } catch (e) {
        emit(RequestErrorState(e.toString()));
      }
    });
    on<RequestingEvent>((event, emit) async {
      emit(const RequestLoadingState());
      try {
        var response =
            await serviceLocator<RequestUseCase>().createRequest(event.request);
        if (response.isRight()) {
          emit(const RequestLoadedState(rooms: [], success: true));
        } else {
          emit(RequestErrorState(
              response.fold((l) => l.toString(), (r) => r.toString())));
        }
      } catch (e) {
        emit(RequestErrorState(e.toString()));
      }
    });
  }
}
