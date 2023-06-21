import 'package:bloc/bloc.dart';

import '../../../core/service_locator.dart';
import '../../../domain/usecases/request_usecase.dart';
import '../../../domain/usecases/room_usecase.dart';
import 'reschedule_event.dart';
import 'reschedule_states.dart';

class RescheduleBloc extends Bloc<RescheduleEvent, RescheduleState> {
  RescheduleBloc() : super(const RescheduleInitialState()) {
    on<GetDataEvent>(
      (event, emit) async {
        emit(const RescheduleLoadingState());
        var rooms = await serviceLocator<RoomUsecase>().getRoomsFromServer();
        if (rooms.isLeft()) {
          emit(RescheduleState.error(
              rooms.fold((l) => l.toString(), (r) => r.toString())));
          return;
        }
        // set the data to the state
        emit(RescheduleState.loaded(
          rooms: rooms.getOrElse(
            () => [],
          ),
          isUpdated: false,
        ));
      },
    );
    on<UpdateDataEvent>(
      (event, emit) async {
        emit(const RescheduleLoadingState());
        var response = await serviceLocator<RequestUseCase>()
            .updateRequest(event.request, null);
        if (response.isRight()) {
          emit(
            const RescheduleLoadedState(
              rooms: [],
              isUpdated: true,
            ),
          );
        } else {
          emit(RescheduleState.error(
              response.fold((l) => l.toString(), (r) => r.toString())));
          var rooms = await serviceLocator<RoomUsecase>().getRoomsFromServer();
          if (rooms.isLeft()) {
            emit(RescheduleState.error(
                rooms.fold((l) => l.toString(), (r) => r.toString())));
            return;
          }
        }
      },
    );
  }
}
