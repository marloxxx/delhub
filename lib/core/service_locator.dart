import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../data/datasources/remote_datasource.dart';
import '../data/datasources/local_data_source.dart';
import '../data/repositories/krs_repository.dart';
import '../data/repositories/login/base/login_user_repository.dart';
import '../data/repositories/login/check_user_login_status.dart';
import '../data/repositories/login/login_user_repository.dart';
import '../data/repositories/local_data_repository.dart';
import '../data/repositories/request_repository.dart';
import '../data/repositories/room_repository.dart';
import '../domain/usecases/get_local_data_usecase.dart';
import '../domain/usecases/krs_usecase.dart';
import '../domain/usecases/login_usecase.dart';
import '../domain/usecases/request_usecase.dart';
import '../domain/usecases/room_usecase.dart';
import '../routes/app_routers.dart';
import '../services/firebase_messaging_service.dart';
import '../services/local_data_cache_service.dart';

import '../services/local_token_cache_service.dart';
import 'request.dart';

final serviceLocator = GetIt.instance;
Future<void> setUpServiceLocator() async {
  //check if user logged in or not
  serviceLocator.registerFactory<CheckUserLoginStatus>(
    () => CheckUserLoginStatusImpl(),
  );
  //usecase
  serviceLocator.registerFactory<LoginUserUsecase>(() => LoginUserUsecase());

  // repositories
  serviceLocator
      .registerFactory<LoginUserRepository>(() => LoginUserRepositoryImpl());

  // student
  // usecase
  serviceLocator
      .registerFactory<GetLocalDataUsecase>(() => GetLocalDataUsecase());
  serviceLocator.registerFactory<RequestUseCase>(() => RequestUseCase());
  serviceLocator.registerFactory<RoomUsecase>(() => RoomUsecase());
  serviceLocator.registerFactory<KRSUsecase>(() => KRSUsecase());

  // repositories
  serviceLocator
      .registerFactory<LocalDataRepository>(() => LocalDataRepositoryImpl());
  serviceLocator
      .registerFactory<RequestRepository>(() => RequestRepositoryImpl());
  serviceLocator.registerFactory<RoomRepository>(() => RoomRepositoryImpl());
  serviceLocator.registerFactory<KRSRepository>(() => KRSRepositoryImpl());

  // data sources
  serviceLocator
      .registerFactory<RemoteDataSource>(() => RemoteDataSourceImpl());
  serviceLocator.registerFactory<LocalDataSource>(() => LocalDataSourceImpl());

  // services
  serviceLocator
      .registerSingleton<LocalDataCacheService>(LocalDataCacheService());
  serviceLocator
      .registerSingleton<LocalTokenCacheService>(LocalTokenCacheService());

  //external
  final sharedPreferences = await SharedPreferences.getInstance();
  serviceLocator.registerFactory<SharedPreferences>(() => sharedPreferences);

  // request
  serviceLocator.registerSingleton<Request>(Request());
  // auto_route
  serviceLocator.registerSingleton<FlutterRouter>(FlutterRouter());
  // firebase messaging
  serviceLocator
      .registerSingleton<FirebaseMessagingService>(FirebaseMessagingService());
}
