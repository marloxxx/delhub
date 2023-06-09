import 'package:dartz/dartz.dart';

import '../../../../core/failure.dart';
import '../../../../core/service_locator.dart';
import '../../../data/repositories/login/base/login_user_repository.dart';
import '../../../../data/models/user_model.dart';
import '../../datasources/remote_datasource.dart';

class LoginUserRepositoryImpl implements LoginUserRepository {
  @override
  Future<Either<Failure, User>> login({required User user}) {
    return serviceLocator<RemoteDataSource>().login(
      user: user,
    );
  }

  @override
  Future<Either<Failure, bool>> storeToken(String token) {
    return serviceLocator<RemoteDataSource>().storeToken(token);
  }

  @override
  Future<Either<Failure, bool>> logout() {
    return serviceLocator<RemoteDataSource>().logout();
  }
}
