import 'package:dartz/dartz.dart';

import '../../../../core/failure.dart';
import '../../../models/user_model.dart';

abstract class LoginUserRepository {
  Future<Either<Failure, User>> login({required User user});

  Future<Either<Failure, bool>> storeToken(String token);

  Future<Either<Failure, bool>> logout();
}
