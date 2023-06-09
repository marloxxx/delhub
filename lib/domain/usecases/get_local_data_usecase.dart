import 'package:dartz/dartz.dart';
import '../../../../core/failure.dart';
import '../../../../core/request.dart';
import '../../../../core/service_locator.dart';
import '../../data/models/user_model.dart';
import '../../data/repositories/local_data_repository.dart';

class GetLocalDataUsecase {
  Future<Either<Failure, User>> getUserFromLocalStorage() async {
    final response =
        await serviceLocator<LocalDataRepository>().getUserFromLocalStorage();
    if (response.isRight()) {
      final responseUser = response.getOrElse(() => User());
      //persist user authorization in request
      serviceLocator<Request>().updateAuthorization(responseUser.token);
    }

    return response;
  }
}
