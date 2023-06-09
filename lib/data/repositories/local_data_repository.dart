import 'package:dartz/dartz.dart';

import '../../core/failure.dart';
import '../../core/service_locator.dart';
import '../datasources/local_data_source.dart';
import '../models/user_model.dart';

abstract class LocalDataRepository {
  Future<Either<Failure, User>> getUserFromLocalStorage();
  Future<Either<Failure, String>> getTokenFromLocalStorage();
}

class LocalDataRepositoryImpl implements LocalDataRepository {
  @override
  Future<Either<Failure, User>> getUserFromLocalStorage() {
    return serviceLocator<LocalDataSource>().getUserFromLocalStorage();
  }

  @override
  Future<Either<Failure, String>> getTokenFromLocalStorage() {
    return serviceLocator<LocalDataSource>().getTokenFromLocalStorage();
  }
}
