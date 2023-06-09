import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/service_locator.dart';
import '../../../../data/models/user_model.dart';
import '../../../../domain/usecases/get_local_data_usecase.dart';
import '../../../domain/usecases/request_usecase.dart';
import '../../../services/local_data_cache_service.dart';
import 'detail_guidance_event.dart';
import 'detail_guidance_states.dart';

class DetailGuidanceBloc
    extends Bloc<DetailGuidanceEvent, DetailGuidanceState> {
  DetailGuidanceBloc() : super(const DetailGuidanceInitialState()) {
    on<GetDataEvent>(
      (event, emit) async {
        var user = await serviceLocator<GetLocalDataUsecase>()
            .getUserFromLocalStorage();
        // set the data to the state
        emit(DetailGuidanceState.loaded(
          user: user.getOrElse(
            () => User(),
          ),
          isUpdated: false,
        ));
      },
    );
    on<UpdateDataEvent>(
      (event, emit) async {
        var response = await serviceLocator<RequestUseCase>()
            .updateRequest(event.id, event.status, event.waktu, event.file);
        if (response.isRight()) {
          emit(
            DetailGuidanceState.loaded(
              user: serviceLocator<LocalDataCacheService>().user ?? User(),
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
