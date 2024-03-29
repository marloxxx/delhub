import 'package:dartz/dartz.dart';

import '../../core/failure.dart';
import '../../core/service_locator.dart';
import '../../data/models/dropped_file_model.dart';
import '../../data/models/request_model.dart';
import '../../data/repositories/request_repository.dart';

class RequestUseCase {
  Future<Either<Failure, RequestList>> getRequestsFromServer() {
    return serviceLocator<RequestRepository>().getRequestsFromServer();
  }

  Future<Either<Failure, RequestList>> getRequestsFromServerByKelompokId(
      int kelompokId) {
    return serviceLocator<RequestRepository>()
        .getRequestsFromServerByKelompokId(kelompokId);
  }

  Future<Either<Failure, bool>> createRequest(Request request) {
    return serviceLocator<RequestRepository>().createRequest(request);
  }

  Future<Either<Failure, Request>> updateRequest(
      Request request, DroppedFile? file) {
    return serviceLocator<RequestRepository>().updateRequest(
      request,
      file,
    );
  }

  Future<Either<Failure, Request>> getRequestFromServer(Request request) {
    return serviceLocator<RequestRepository>().getRequestFromServer(request);
  }
}
