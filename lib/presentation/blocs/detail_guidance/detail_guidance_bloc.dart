import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/service_locator.dart';
import '../../../../data/models/user_model.dart';
import '../../../../domain/usecases/get_local_data_usecase.dart';
import '../../../data/models/request_model.dart';
import '../../../domain/usecases/request_usecase.dart';
import '../../../domain/usecases/room_usecase.dart';
import 'detail_guidance_event.dart';
import 'detail_guidance_states.dart';

class DetailGuidanceBloc
    extends Bloc<DetailGuidanceEvent, DetailGuidanceState> {
  DetailGuidanceBloc() : super(const DetailGuidanceInitialState()) {
    on<GetDataEvent>(
      (event, emit) async {
        emit(const DetailGuidanceLoadingState());
        var user = await serviceLocator<GetLocalDataUsecase>()
            .getUserFromLocalStorage();
        var request = await serviceLocator<RequestUseCase>()
            .getRequestFromServer(event.request);
        var rooms = await serviceLocator<RoomUsecase>().getRoomsFromServer();
        // set the data to the state
        emit(DetailGuidanceState.loaded(
          user: user.getOrElse(
            () => User(),
          ),
          request: request.getOrElse(
            () => Request(),
          ),
          rooms: rooms.getOrElse(
            () => [],
          ),
          isUpdated: false,
        ));
      },
    );
    on<UpdateDataEvent>(
      (event, emit) async {
        emit(const DetailGuidanceLoadingState());
        var response = await serviceLocator<RequestUseCase>()
            .updateRequest(event.request, event.file);
        var user = await serviceLocator<GetLocalDataUsecase>()
            .getUserFromLocalStorage();
        if (response.isRight()) {
          emit(
            DetailGuidanceLoadedState(
              user: user.getOrElse(() => User()),
              request: response.getOrElse(
                () => Request(),
              ),
              rooms: [],
              isUpdated: true,
            ),
          );
        } else {
          emit(DetailGuidanceState.error(
              response.fold((l) => l.toString(), (r) => r.toString())));
        }
      },
    );
  }
}
