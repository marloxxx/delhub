import 'package:dartz/dartz.dart';

import '../../core/failure.dart';
import '../../core/service_locator.dart';
import '../datasources/remote_datasource.dart';
import '../models/dropped_file_model.dart';
import '../models/request_model.dart';

abstract class RequestRepository {
  Future<Either<Failure, RequestList>> getRequestsFromServer();
  Future<Either<Failure, RequestList>> getRequestsFromServerByKelompokId(
      int kelompokId);
  Future<Either<Failure, bool>> createRequest(Request request);
  Future<Either<Failure, Request>> updateRequest(
      int id, String status, String? waktu, DroppedFile? file, String? result);

  Future<Either<Failure, Request>> getRequestFromServer(Request request);
}

class RequestRepositoryImpl implements RequestRepository {
  @override
  Future<Either<Failure, RequestList>> getRequestsFromServer() {
    return serviceLocator<RemoteDataSource>().getRequestsFromServer();
  }

  @override
  Future<Either<Failure, RequestList>> getRequestsFromServerByKelompokId(
      int kelompokId) {
    return serviceLocator<RemoteDataSource>()
        .getRequestsFromServerByKelompokId(kelompokId);
  }

  @override
  Future<Either<Failure, bool>> createRequest(Request request) {
    return serviceLocator<RemoteDataSource>().createRequest(request);
  }

  @override
  Future<Either<Failure, Request>> updateRequest(
      int id, String status, String? waktu, DroppedFile? file, String? result) {
    return serviceLocator<RemoteDataSource>()
        .updateRequest(id, status, waktu, file, result);
  }

  @override
  Future<Either<Failure, Request>> getRequestFromServer(Request request) async {
    return serviceLocator<RemoteDataSource>().getRequestFromServer(request);
  }
}
