import '../../../core/service_locator.dart';
import '../../../services/local_data_cache_service.dart';
import '../../models/user_model.dart';

abstract class CheckUserLoginStatus {
  Future<User> checkIfUserLoggedIn();
}

class CheckUserLoginStatusImpl extends CheckUserLoginStatus {
  @override
  Future<User> checkIfUserLoggedIn() async {
    final user = await serviceLocator<LocalDataCacheService>().getUser();
    return user ?? User();
  }
}
