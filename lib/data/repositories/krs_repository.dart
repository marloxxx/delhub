import 'package:dartz/dartz.dart';

import '../../core/failure.dart';
import '../../core/service_locator.dart';
import '../datasources/remote_datasource.dart';
import '../models/kelompok_model.dart';
import '../models/krs_model.dart';

abstract class KRSRepository {
  Future<Either<Failure, KRSList>> getKRSFromServer();

  Future<Either<Failure, KelompokList>> getGroupByKrsFromServer(int krsId);
}

class KRSRepositoryImpl implements KRSRepository {
  @override
  Future<Either<Failure, KRSList>> getKRSFromServer() {
    return serviceLocator<RemoteDataSource>().getKRSFromServer();
  }

  @override
  Future<Either<Failure, KelompokList>> getGroupByKrsFromServer(int krsId) {
    return serviceLocator<RemoteDataSource>().getGroupByKrsFromServer(krsId);
  }
}
