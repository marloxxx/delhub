import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/service_locator.dart';
import '../../../data/models/request_model.dart';
import '../../../domain/usecases/request_usecase.dart';
import 'status_upload_event.dart';
import 'status_upload_states.dart';

class StatusUploadBloc extends Bloc<StatusUploadEvent, StatusUploadState> {
  StatusUploadBloc() : super(const StatusUploadInitialState()) {
    on<GetDataEvent>(
      (event, emit) async {
        emit(const StatusUploadLoadingState());
        var request = await serviceLocator<RequestUseCase>()
            .getRequestFromServer(event.request);
        if (request.isLeft()) {
          emit(StatusUploadState.error(
              request.fold((l) => l.toString(), (r) => r.toString())));
          return;
        }
        // set the data to the state
        emit(StatusUploadState.loaded(
          request: request.getOrElse(
            () => Request(),
          ),
          isUpdated: false,
        ));
      },
    );
    on<UpdateDataEvent>(
      (event, emit) async {
        emit(const StatusUploadLoadingState());
        var response = await serviceLocator<RequestUseCase>()
            .updateRequest(event.request, event.file);
        if (response.isRight()) {
          emit(
            StatusUploadLoadedState(
              request: response.getOrElse(() => Request()),
              isUpdated: true,
            ),
          );
        } else {
          emit(StatusUploadState.error(
              response.fold((l) => l.toString(), (r) => r.toString())));
        }
      },
    );
  }
}
