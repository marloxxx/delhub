import 'package:dartz/dartz.dart';

import '../../../../core/failure.dart';
import '../../../../core/request.dart';
import '../../../../core/service_locator.dart';
import '../../../../data/models/user_model.dart';
import '../../../../data/repositories/login/base/login_user_repository.dart';
import '../../services/firebase_messaging_service.dart';
import '../../services/local_data_cache_service.dart';
import '../../services/local_token_cache_service.dart';

class LoginUserUsecase {
  Future<Either<Failure, User>> login(User user) async {
    final response =
        await serviceLocator<LoginUserRepository>().login(user: user);

    if (response.isRight()) {
      final remoteUser = response.getOrElse(() => User());
      serviceLocator<Request>().updateAuthorization(
        remoteUser.token,
      );
      await serviceLocator<LocalDataCacheService>().saveUser(remoteUser);
      // check token from local cache service, if token is null then get token from firebase
      await serviceLocator<FirebaseMessagingService>().getToken();
    }

    return response;
  }

  Future<Either<Failure, bool>> logout() async {
    final response = await serviceLocator<LoginUserRepository>().logout();

    if (response.isRight()) {
      await serviceLocator<LocalTokenCacheService>().deleteToken();
      String role = serviceLocator<LocalDataCacheService>().user!.role;
      if (role == 'mahasiswa') {
        await serviceLocator<LocalDataCacheService>().deleteMahasiswa();
        await serviceLocator<LocalDataCacheService>().deleteKelompok();
      } else if (role == 'dosen') {
        await serviceLocator<LocalDataCacheService>().deleteDosen();
      }
      await serviceLocator<LocalDataCacheService>().deleteUser();
      // remove token from firebase
      await serviceLocator<FirebaseMessagingService>().removeToken();
    }

    return response;
  }
}
